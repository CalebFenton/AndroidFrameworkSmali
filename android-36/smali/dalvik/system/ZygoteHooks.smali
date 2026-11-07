.class public final Ldalvik/system/ZygoteHooks;
.super Ljava/lang/Object;
.source "ZygoteHooks.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static blacklist enableMemoryMappedDataMethod:Ljava/lang/reflect/Method;

.field private static blacklist inZygoteProcess:Z

.field private static greylist-max-o token:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Ldalvik/system/ZygoteHooks;->inZygoteProcess:Z

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static blacklist cleanLocaleCaches()V
    .registers 2

    .line 147
    invoke-static {}, Lsun/util/locale/BaseLocale;->cleanCache()V

    .line 148
    invoke-static {}, Ljava/util/Locale;->cleanCache()V

    .line 154
    new-instance v0, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v0}, Landroid/icu/util/ULocale$Builder;-><init>()V

    const-string v1, "en"

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale$Builder;->setLanguage(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    .line 155
    return-void
.end method

.method public static blacklist test-api gcAndFinalize()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 166
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 171
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 172
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 173
    invoke-static {}, Ldalvik/system/ZygoteHooks;->cleanLocaleCaches()V

    .line 174
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 175
    return-void
.end method

.method public static blacklist inZygote()Z
    .registers 1

    .line 284
    sget-boolean v0, Ldalvik/system/ZygoteHooks;->inZygoteProcess:Z

    return v0
.end method

.method public static blacklist test-api isIndefiniteThreadSuspensionSafe()Z
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 276
    invoke-static {}, Ldalvik/system/ZygoteHooks;->nativeZygoteLongSuspendOk()Z

    move-result v0

    return v0
.end method

.method private static native greylist-max-o nativePostForkChild(JIZZLjava/lang/String;)V
.end method

.method private static native blacklist nativePostForkSystemServer(I)V
.end method

.method private static native blacklist nativePostZygoteFork()V
.end method

.method private static native greylist-max-o nativePreFork()J
.end method

.method private static native blacklist nativeZygoteLongSuspendOk()Z
.end method

.method public static blacklist test-api onBeginPreload()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 75
    invoke-static {}, Lcom/android/i18n/system/ZygoteHooks;->onBeginPreload()V

    .line 77
    invoke-static {}, Llibcore/icu/ICU;->initializeCacheInZygote()V

    .line 78
    invoke-static {}, Llibcore/icu/DecimalFormatData;->initializeCacheInZygote()V

    .line 79
    invoke-static {}, Llibcore/icu/SimpleDateFormatData;->initializeCacheInZygote()V

    .line 80
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    .line 85
    :try_start_f
    const-string v0, "org.jacoco.agent.rt.internal.Offline"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 86
    .local v0, "jacocoOfflineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "enableMemoryMappedData"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ldalvik/system/ZygoteHooks;->enableMemoryMappedDataMethod:Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_20} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_20} :catch_21

    .end local v0    # "jacocoOfflineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_29

    .line 89
    :catch_21
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 87
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_28
    move-exception v0

    .line 93
    :goto_29
    nop

    .line 94
    return-void
.end method

.method public static blacklist test-api onEndPreload()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 110
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkExtensionSLevel()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_27

    .line 111
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x23

    if-gt v0, v1, :cond_27

    .line 117
    :try_start_10
    const-string v0, "android.net.http.HttpEngine"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "preload"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_25} :catch_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_25} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_25} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_25} :catch_26

    .line 131
    goto :goto_27

    .line 118
    :catch_26
    move-exception v0

    .line 133
    :cond_27
    :goto_27
    invoke-static {}, Lcom/android/i18n/system/ZygoteHooks;->onEndPreload()V

    .line 136
    sget-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->cloneForFork()V

    .line 137
    sget-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->cloneForFork()V

    .line 138
    sget-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->cloneForFork()V

    .line 139
    return-void
.end method

.method public static greylist-max-o test-api postForkChild(IZZLjava/lang/String;)V
    .registers 10
    .param p0, "runtimeFlags"    # I
    .param p1, "isSystemServer"    # Z
    .param p2, "isChildZygote"    # Z
    .param p3, "instructionSet"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 230
    sget-wide v0, Ldalvik/system/ZygoteHooks;->token:J

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .end local p0    # "runtimeFlags":I
    .end local p1    # "isSystemServer":Z
    .end local p2    # "isChildZygote":Z
    .end local p3    # "instructionSet":Ljava/lang/String;
    .local v2, "runtimeFlags":I
    .local v3, "isSystemServer":Z
    .local v4, "isChildZygote":Z
    .local v5, "instructionSet":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Ldalvik/system/ZygoteHooks;->nativePostForkChild(JIZZLjava/lang/String;)V

    .line 231
    const/4 p0, 0x0

    if-nez v4, :cond_e

    .line 232
    sput-boolean p0, Ldalvik/system/ZygoteHooks;->inZygoteProcess:Z

    .line 235
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->setRandomSeedInternal(J)V

    .line 241
    if-nez v3, :cond_2e

    if-nez v4, :cond_2e

    sget-object p1, Ldalvik/system/ZygoteHooks;->enableMemoryMappedDataMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2e

    .line 243
    :try_start_1d
    sget-object p1, Ldalvik/system/ZygoteHooks;->enableMemoryMappedDataMethod:Ljava/lang/reflect/Method;

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1d .. :try_end_25} :catch_26

    .line 246
    goto :goto_2e

    .line 244
    :catch_26
    move-exception v0

    move-object p0, v0

    .line 245
    .local p0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 248
    .end local p0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_2e
    :goto_2e
    return-void
.end method

.method public static greylist-max-o test-api postForkCommon()V
    .registers 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 260
    invoke-static {}, Ldalvik/system/ZygoteHooks;->nativePostZygoteFork()V

    .line 261
    invoke-static {}, Ljava/lang/Daemons;->startPostZygoteFork()V

    .line 262
    return-void
.end method

.method public static blacklist test-api postForkSystemServer(I)V
    .registers 1
    .param p0, "runtimeFlags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 213
    invoke-static {p0}, Ldalvik/system/ZygoteHooks;->nativePostForkSystemServer(I)V

    .line 214
    return-void
.end method

.method public static greylist-max-o test-api preFork()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 197
    invoke-static {}, Ljava/lang/Daemons;->stop()V

    .line 200
    invoke-static {}, Ldalvik/system/ZygoteHooks;->nativePreFork()J

    move-result-wide v0

    sput-wide v0, Ldalvik/system/ZygoteHooks;->token:J

    .line 201
    return-void
.end method

.method public static native greylist-max-o test-api startZygoteNoThreadCreation()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist-max-o test-api stopZygoteNoThreadCreation()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method
