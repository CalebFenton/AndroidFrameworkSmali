.class public Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;
.super Landroid_maps_conflict_avoidance/com/google/common/Config;
.source "AndroidConfig.java"


# static fields
.field private static uiThread:Ljava/lang/Thread;


# instance fields
.field private final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field protected connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

.field protected final context:Landroid/content/Context;

.field protected fontFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/FontFactory;

.field protected imageFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

.field protected persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

.field private final pixelsPerInch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 87
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@4
    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 94
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;-><init>()V

    #@4
    .line 75
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidClock;

    #@6
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidClock;-><init>()V

    #@9
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@b
    .line 95
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    #@d
    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v0

    #@11
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->uiThread:Ljava/lang/Thread;

    #@13
    .line 98
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->setConfig(Landroid_maps_conflict_avoidance/com/google/common/Config;)V

    #@16
    .line 100
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->init()V

    #@19
    .line 103
    sput-boolean v1, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->USE_NATIVE_COMMANDS:Z

    #@1b
    .line 104
    sput-boolean v1, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->USE_NATIVE_MENUS:Z

    #@1d
    const/4 v0, 0x4

    #@1e
    .line 105
    sput v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->KEY_BACK:I

    #@20
    .line 107
    if-nez p1, :cond_0

    #@22
    const/16 v0, 0xa0

    #@24
    .line 111
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->pixelsPerInch:I

    #@26
    .line 116
    :goto_0
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->initPortabilityFields(Ljava/lang/String;)V

    #@29
    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@2c
    move-result-object v0

    #@2d
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->initLocale(Ljava/util/Locale;)V

    #@30
    .line 118
    return-void

    #@31
    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@38
    move-result-object v0

    #@39
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@3b
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->pixelsPerInch:I

    #@3d
    goto :goto_0
.end method

.method private getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 216
    .local v8, "value":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    #@3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    const-string/jumbo v1, "content://com.google.settings/partner"

    #@a
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    new-array v2, v2, [Ljava/lang/String;

    #@11
    const/4 v3, 0x0

    #@12
    const-string/jumbo v4, "value"

    #@15
    aput-object v4, v2, v3

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "name=\'"

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, "\'"

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    const/4 v4, 0x0

    #@33
    const/4 v5, 0x0

    #@34
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@37
    move-result-object v6

    #@38
    .line 219
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    #@3a
    .line 229
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    #@3b
    .line 219
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_0

    #@41
    const-string/jumbo v0, "value"

    #@44
    .line 220
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@47
    move-result v0

    #@48
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    move-result-object v8

    #@4c
    .local v8, "value":Ljava/lang/String;
    goto :goto_0

    #@4d
    .line 228
    .end local v6    # "cursor":Landroid/database/Cursor;
    .local v8, "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@4e
    .line 222
    .local v7, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private initLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 142
    .local v0, "localeString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getI18n()Landroid_maps_conflict_avoidance/com/google/common/I18n;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    #@b
    .line 143
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getI18n()Landroid_maps_conflict_avoidance/com/google/common/I18n;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->setUiLocale(Ljava/lang/String;)V

    #@12
    .line 144
    return-void
.end method


# virtual methods
.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 166
    return-object v0
.end method

.method public getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .locals 1

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@2
    return-object v0
.end method

.method public bridge synthetic getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    #@2
    return-object v0
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const-string/jumbo v1, "Web"

    #@3
    .local v1, "defaultValue":Ljava/lang/String;
    const-string/jumbo v3, "maps_client_id"

    #@6
    .line 195
    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 196
    .local v2, "donutValue":Ljava/lang/String;
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 200
    return-object v2

    #@11
    :cond_0
    const-string/jumbo v3, "client_id"

    #@14
    .line 197
    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 198
    .local v0, "cupcakeValue":Ljava/lang/String;
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_1

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "gmm-"

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    :goto_0
    return-object v3

    #@33
    :cond_1
    const-string/jumbo v3, "Web"

    #@36
    goto :goto_0
.end method

.method public bridge synthetic getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->imageFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

    #@2
    return-object v0
.end method

.method public getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .param p1, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 427
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    #@2
    new-instance v1, Ljava/util/zip/Inflater;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@8
    invoke-direct {v0, p1, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    #@b
    return-object v0
.end method

.method public getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .locals 1

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@2
    return-object v0
.end method

.method public getPixelsPerInch()I
    .locals 1

    #@0
    .prologue
    .line 343
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->pixelsPerInch:I

    #@2
    return v0
.end method

.method protected initPortabilityFields(Ljava/lang/String;)V
    .locals 2
    .param p1, "basePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 129
    if-nez p1, :cond_1

    #@6
    .line 132
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;

    #@8
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    #@a
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@f
    .line 134
    :goto_0
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    #@11
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    #@13
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;-><init>(Landroid/content/Context;)V

    #@16
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    #@18
    .line 135
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidFontFactory;

    #@1a
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidFontFactory;-><init>()V

    #@1d
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->fontFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/FontFactory;

    #@1f
    .line 136
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory;

    #@21
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    #@23
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory;-><init>(Landroid/content/Context;)V

    #@26
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->imageFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

    #@28
    .line 137
    return-void

    #@29
    .line 128
    :cond_0
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;

    #@2b
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;-><init>()V

    #@2e
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@30
    goto :goto_0

    #@31
    .line 130
    :cond_1
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;

    #@33
    invoke-direct {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;-><init>(Ljava/lang/String;)V

    #@36
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@38
    goto :goto_0
.end method

.method protected setupGzipper()V
    .locals 1

    #@0
    .prologue
    .line 331
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig$1;

    #@2
    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig$1;-><init>(Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;)V

    #@5
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->setImplementation(Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;)V

    #@8
    .line 336
    return-void
.end method
