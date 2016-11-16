.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    }
.end annotation


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"

.field private static final ATTR_ELAPSED_IDLE:Ljava/lang/String; = "elapsedIdleTime"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SCREEN_IDLE:Ljava/lang/String; = "screenIdleTime"

.field private static final FLAG_LAST_STATE:I = 0x2

.field private static final FLAG_PARTIAL_ACTIVE:I = 0x1

.field private static final HISTORY_SIZE:I = 0x64

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final PERIOD_DURATION:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "AppIdleHistory"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGES:Ljava/lang/String; = "packages"


# instance fields
.field private mElapsedDuration:J

.field private mElapsedSnapshot:J

.field private mElapsedTimeThreshold:J

.field private mIdleHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastPeriod:J

.field private mScreenOn:Z

.field private mScreenOnDuration:J

.field private mScreenOnSnapshot:J

.field private mScreenOnTimeThreshold:J

.field private final mStorageDir:Ljava/io/File;


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 96
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    #@7
    .line 95
    return-void
.end method

.method constructor <init>(Ljava/io/File;J)V
    .locals 2
    .param p1, "storageDir"    # Ljava/io/File;
    .param p2, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@a
    .line 57
    const-wide/16 v0, 0x0

    #@c
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    #@e
    .line 101
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    #@10
    .line 102
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    #@12
    .line 103
    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    #@14
    .line 104
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->readScreenOnTimeLocked()V

    #@17
    .line 100
    return-void
.end method

.method private getElapsedTimeLocked(J)J
    .locals 5
    .param p1, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 263
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    #@2
    sub-long v0, p1, v0

    #@4
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    #@6
    add-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method private getPackageHistoryLocked(Landroid/util/ArrayMap;Ljava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    .locals 5
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    const/4 v1, 0x0

    #@1
    .line 237
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    #@7
    .line 238
    .local v0, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    if-nez v0, :cond_0

    #@9
    .line 239
    new-instance v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    #@b
    .end local v0    # "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    invoke-direct {v0, v1}, Lcom/android/server/usage/AppIdleHistory$PackageHistory;-><init>(Lcom/android/server/usage/AppIdleHistory$PackageHistory;)V

    #@e
    .line 240
    .restart local v0    # "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTimeLocked(J)J

    #@11
    move-result-wide v2

    #@12
    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    #@14
    .line 241
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    #@17
    move-result-wide v2

    #@18
    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    #@1a
    .line 242
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 244
    :cond_0
    return-object v0
.end method

.method private getUserFile(I)Ljava/io/File;
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 289
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    new-instance v2, Ljava/io/File;

    #@6
    iget-object v3, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    #@8
    const-string/jumbo v4, "users"

    #@b
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@e
    .line 290
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 289
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@15
    .line 290
    const-string/jumbo v2, "app_idle_stats.xml"

    #@18
    .line 289
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1b
    return-object v0
.end method

.method private getUserHistoryLocked(I)Landroid/util/ArrayMap;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/ArrayMap;

    #@8
    .line 227
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    if-nez v0, :cond_0

    #@a
    .line 228
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    .end local v0    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 229
    .restart local v0    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 230
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/AppIdleHistory;->readAppIdleTimesLocked(ILandroid/util/ArrayMap;)V

    #@17
    .line 232
    :cond_0
    return-object v0
.end method

.method private hasPassedThresholdsLocked(Lcom/android/server/usage/AppIdleHistory$PackageHistory;J)Z
    .locals 8
    .param p1, "packageHistory"    # Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    .param p2, "elapsedRealtime"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 282
    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    #@3
    .line 283
    invoke-virtual {p0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    #@6
    move-result-wide v4

    #@7
    iget-wide v6, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnTimeThreshold:J

    #@9
    sub-long/2addr v4, v6

    #@a
    .line 282
    cmp-long v1, v2, v4

    #@c
    if-gtz v1, :cond_0

    #@e
    .line 284
    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    #@10
    .line 285
    invoke-direct {p0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTimeLocked(J)J

    #@13
    move-result-wide v4

    #@14
    iget-wide v6, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedTimeThreshold:J

    #@16
    sub-long/2addr v4, v6

    #@17
    .line 284
    cmp-long v1, v2, v4

    #@19
    if-gtz v1, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 282
    :cond_0
    return v0
.end method

.method private readAppIdleTimesLocked(ILandroid/util/ArrayMap;)V
    .locals 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x2

    #@2
    .line 294
    const/4 v2, 0x0

    #@3
    .line 296
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    #@5
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    #@8
    move-result-object v8

    #@9
    invoke-direct {v0, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@c
    .line 297
    .local v0, "appIdleFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@f
    move-result-object v2

    #@10
    .line 298
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@13
    move-result-object v6

    #@14
    .line 299
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@16
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@19
    move-result-object v8

    #@1a
    invoke-interface {v6, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1d
    .line 302
    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@20
    move-result v7

    #@21
    .local v7, "type":I
    if-eq v7, v10, :cond_1

    #@23
    .line 303
    if-ne v7, v11, :cond_0

    #@25
    .line 307
    :cond_1
    if-eq v7, v10, :cond_2

    #@27
    .line 308
    const-string/jumbo v8, "AppIdleHistory"

    #@2a
    new-instance v9, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v10, "Unable to read app idle file for user "

    #@32
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v9

    #@36
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 331
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@44
    .line 309
    return-void

    #@45
    .line 311
    :cond_2
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    const-string/jumbo v9, "packages"

    #@4c
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    move-result v8

    #@50
    if-nez v8, :cond_3

    #@52
    .line 331
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@55
    .line 312
    return-void

    #@56
    .line 314
    :cond_3
    :goto_0
    :try_start_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@59
    move-result v7

    #@5a
    if-eq v7, v11, :cond_4

    #@5c
    .line 315
    if-ne v7, v10, :cond_3

    #@5e
    .line 316
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    .line 317
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v8, "package"

    #@65
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v8

    #@69
    if-eqz v8, :cond_3

    #@6b
    .line 318
    const-string/jumbo v8, "name"

    #@6e
    const/4 v9, 0x0

    #@6f
    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    .line 319
    .local v5, "packageName":Ljava/lang/String;
    new-instance v4, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    #@75
    const/4 v8, 0x0

    #@76
    invoke-direct {v4, v8}, Lcom/android/server/usage/AppIdleHistory$PackageHistory;-><init>(Lcom/android/server/usage/AppIdleHistory$PackageHistory;)V

    #@79
    .line 321
    .local v4, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    const-string/jumbo v8, "elapsedIdleTime"

    #@7c
    const/4 v9, 0x0

    #@7d
    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@80
    move-result-object v8

    #@81
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@84
    move-result-wide v8

    #@85
    .line 320
    iput-wide v8, v4, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    #@87
    .line 323
    const-string/jumbo v8, "screenIdleTime"

    #@8a
    const/4 v9, 0x0

    #@8b
    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@92
    move-result-wide v8

    #@93
    .line 322
    iput-wide v8, v4, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    #@95
    .line 324
    invoke-virtual {p2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@98
    goto :goto_0

    #@99
    .line 328
    .end local v0    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_0
    move-exception v1

    #@9a
    .line 329
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v8, "AppIdleHistory"

    #@9d
    new-instance v9, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v10, "Unable to read app idle file for user "

    #@a5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v9

    #@a9
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v9

    #@ad
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v9

    #@b1
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b4
    .line 331
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b7
    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    #@b8
    .line 331
    .restart local v0    # "appIdleFile":Landroid/util/AtomicFile;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@bb
    goto :goto_1

    #@bc
    .line 330
    .end local v0    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catchall_0
    move-exception v8

    #@bd
    .line 331
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c0
    .line 330
    throw v8
.end method

.method private readScreenOnTimeLocked()V
    .locals 6

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    #@3
    move-result-object v2

    #@4
    .line 140
    .local v2, "screenOnTimeFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 142
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    #@c
    new-instance v3, Ljava/io/FileReader;

    #@e
    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@11
    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@14
    .line 143
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1b
    move-result-wide v4

    #@1c
    iput-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    #@1e
    .line 144
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@25
    move-result-wide v4

    #@26
    iput-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    #@28
    .line 145
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 138
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-void

    #@2c
    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTimeLocked()V

    #@2f
    goto :goto_0

    #@30
    .line 146
    :catch_0
    move-exception v0

    #@31
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private shiftHistoryToNow(Landroid/util/ArrayMap;J)V
    .locals 12
    .param p2, "elapsedRealtime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;",
            ">;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 202
    .local p1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    const-wide/32 v8, 0x36ee80

    #@3
    div-long v6, p2, v8

    #@5
    .line 204
    .local v6, "thisPeriod":J
    iget-wide v8, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    #@7
    const-wide/16 v10, 0x0

    #@9
    cmp-long v8, v8, v10

    #@b
    if-eqz v8, :cond_2

    #@d
    iget-wide v8, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    #@f
    cmp-long v8, v8, v6

    #@11
    if-gez v8, :cond_2

    #@13
    .line 205
    iget-wide v8, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    #@15
    sub-long v8, v6, v8

    #@17
    const-wide/16 v10, 0x63

    #@19
    cmp-long v8, v8, v10

    #@1b
    if-gez v8, :cond_2

    #@1d
    .line 206
    iget-wide v8, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    #@1f
    sub-long v8, v6, v8

    #@21
    long-to-int v1, v8

    #@22
    .line 207
    .local v1, "diff":I
    iget-object v8, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@27
    move-result v0

    #@28
    .line 208
    .local v0, "NUSERS":I
    const/4 v5, 0x0

    #@29
    .local v5, "u":I
    :goto_0
    if-ge v5, v0, :cond_2

    #@2b
    .line 209
    iget-object v8, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@30
    move-result-object p1

    #@31
    .end local p1    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    check-cast p1, Landroid/util/ArrayMap;

    #@33
    .line 210
    .restart local p1    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@36
    move-result-object v8

    #@37
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v4

    #@3b
    .local v4, "idleState$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v8

    #@3f
    if-eqz v8, :cond_1

    #@41
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v3

    #@45
    check-cast v3, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    #@47
    .line 212
    .local v3, "idleState":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    iget-object v8, v3, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    #@49
    iget-object v9, v3, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    #@4b
    .line 213
    rsub-int/lit8 v10, v1, 0x64

    #@4d
    .line 212
    const/4 v11, 0x0

    #@4e
    invoke-static {v8, v1, v9, v11, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@51
    .line 215
    const/4 v2, 0x0

    #@52
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    #@54
    .line 216
    iget-object v8, v3, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    #@56
    rsub-int/lit8 v9, v2, 0x64

    #@58
    add-int/lit8 v9, v9, -0x1

    #@5a
    .line 217
    iget-object v10, v3, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    #@5c
    rsub-int/lit8 v11, v1, 0x64

    #@5e
    add-int/lit8 v11, v11, -0x1

    #@60
    aget-byte v10, v10, v11

    #@62
    and-int/lit8 v10, v10, 0x2

    #@64
    int-to-byte v10, v10

    #@65
    .line 216
    aput-byte v10, v8, v9

    #@67
    .line 215
    add-int/lit8 v2, v2, 0x1

    #@69
    goto :goto_1

    #@6a
    .line 208
    .end local v2    # "i":I
    .end local v3    # "idleState":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@6c
    goto :goto_0

    #@6d
    .line 222
    .end local v0    # "NUSERS":I
    .end local v1    # "diff":I
    .end local v4    # "idleState$iterator":Ljava/util/Iterator;
    .end local v5    # "u":I
    :cond_2
    iput-wide v6, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    #@6f
    .line 201
    return-void
.end method

.method private writeScreenOnTimeLocked()V
    .locals 6

    #@0
    .prologue
    .line 154
    new-instance v2, Landroid/util/AtomicFile;

    #@2
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    #@5
    move-result-object v3

    #@6
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@9
    .line 155
    .local v2, "screenOnTimeFile":Landroid/util/AtomicFile;
    const/4 v0, 0x0

    #@a
    .line 157
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@d
    move-result-object v0

    #@e
    .line 158
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    #@15
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, "\n"

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    .line 159
    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    #@26
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 159
    const-string/jumbo v4, "\n"

    #@31
    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    #@40
    .line 160
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 153
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    #@44
    .line 161
    :catch_0
    move-exception v1

    #@45
    .line 162
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@48
    goto :goto_0
.end method


# virtual methods
.method public clearUsageLocked(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 277
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    .line 278
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 276
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 16
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 373
    const-string/jumbo v13, "Package idle stats:"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@b
    .line 375
    move-object/from16 v0, p0

    #@d
    iget-object v13, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@f
    move/from16 v0, p2

    #@11
    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v12

    #@15
    check-cast v12, Landroid/util/ArrayMap;

    #@17
    .line 376
    .local v12, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1a
    move-result-wide v4

    #@1b
    .line 377
    .local v4, "elapsedRealtime":J
    move-object/from16 v0, p0

    #@1d
    invoke-direct {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTimeLocked(J)J

    #@20
    move-result-wide v10

    #@21
    .line 378
    .local v10, "totalElapsedTime":J
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    #@26
    move-result-wide v8

    #@27
    .line 379
    .local v8, "screenOnTime":J
    if-nez v12, :cond_0

    #@29
    return-void

    #@2a
    .line 380
    :cond_0
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    #@2d
    move-result v2

    #@2e
    .line 381
    .local v2, "P":I
    const/4 v3, 0x0

    #@2f
    .local v3, "p":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@31
    .line 382
    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@34
    move-result-object v7

    #@35
    check-cast v7, Ljava/lang/String;

    #@37
    .line 383
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3a
    move-result-object v6

    #@3b
    check-cast v6, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    #@3d
    .line 384
    .local v6, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    new-instance v13, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v14, "package="

    #@45
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v13

    #@49
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v13

    #@4d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v13

    #@51
    move-object/from16 v0, p1

    #@53
    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 385
    const-string/jumbo v13, " lastUsedElapsed="

    #@59
    move-object/from16 v0, p1

    #@5b
    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@5e
    .line 386
    iget-wide v14, v6, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    #@60
    sub-long v14, v10, v14

    #@62
    move-object/from16 v0, p1

    #@64
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@67
    .line 387
    const-string/jumbo v13, " lastUsedScreenOn="

    #@6a
    move-object/from16 v0, p1

    #@6c
    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@6f
    .line 388
    iget-wide v14, v6, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    #@71
    sub-long v14, v8, v14

    #@73
    move-object/from16 v0, p1

    #@75
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@78
    .line 389
    new-instance v13, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v14, " idle="

    #@80
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v14

    #@84
    move-object/from16 v0, p0

    #@86
    move/from16 v1, p2

    #@88
    invoke-virtual {v0, v7, v1, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->isIdleLocked(Ljava/lang/String;IJ)Z

    #@8b
    move-result v13

    #@8c
    if-eqz v13, :cond_1

    #@8e
    const-string/jumbo v13, "y"

    #@91
    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v13

    #@95
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v13

    #@99
    move-object/from16 v0, p1

    #@9b
    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@9e
    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@a1
    .line 381
    add-int/lit8 v3, v3, 0x1

    #@a3
    goto :goto_0

    #@a4
    .line 389
    :cond_1
    const-string/jumbo v13, "n"

    #@a7
    goto :goto_1

    #@a8
    .line 392
    .end local v6    # "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@ab
    .line 393
    const-string/jumbo v13, "totalElapsedTime="

    #@ae
    move-object/from16 v0, p1

    #@b0
    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@b3
    .line 394
    move-object/from16 v0, p0

    #@b5
    invoke-direct {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTimeLocked(J)J

    #@b8
    move-result-wide v14

    #@b9
    move-object/from16 v0, p1

    #@bb
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@be
    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@c1
    .line 396
    const-string/jumbo v13, "totalScreenOnTime="

    #@c4
    move-object/from16 v0, p1

    #@c6
    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@c9
    .line 397
    move-object/from16 v0, p0

    #@cb
    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    #@ce
    move-result-wide v14

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@d4
    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@d7
    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@da
    .line 372
    return-void
.end method

.method public dumpHistory(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 10
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 403
    iget-object v8, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v7

    #@6
    check-cast v7, Landroid/util/ArrayMap;

    #@8
    .line 404
    .local v7, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v2

    #@c
    .line 405
    .local v2, "elapsedRealtime":J
    if-nez v7, :cond_0

    #@e
    return-void

    #@f
    .line 406
    :cond_0
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@12
    move-result v0

    #@13
    .line 407
    .local v0, "P":I
    const/4 v5, 0x0

    #@14
    .local v5, "p":I
    :goto_0
    if-ge v5, v0, :cond_4

    #@16
    .line 408
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@19
    move-result-object v6

    #@1a
    check-cast v6, Ljava/lang/String;

    #@1c
    .line 409
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v8

    #@20
    check-cast v8, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    #@22
    iget-object v1, v8, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    #@24
    .line 410
    .local v1, "history":[B
    const/4 v4, 0x0

    #@25
    .local v4, "i":I
    :goto_1
    const/16 v8, 0x64

    #@27
    if-ge v4, v8, :cond_2

    #@29
    .line 411
    aget-byte v8, v1, v4

    #@2b
    if-nez v8, :cond_1

    #@2d
    const/16 v8, 0x2e

    #@2f
    :goto_2
    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    #@32
    .line 410
    add-int/lit8 v4, v4, 0x1

    #@34
    goto :goto_1

    #@35
    .line 411
    :cond_1
    const/16 v8, 0x41

    #@37
    goto :goto_2

    #@38
    .line 413
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v9, " idle="

    #@40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {p0, v6, p2, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->isIdleLocked(Ljava/lang/String;IJ)Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_3

    #@4a
    const-string/jumbo v8, "y"

    #@4d
    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@58
    .line 414
    new-instance v8, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v9, "  "

    #@60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@6f
    .line 415
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@72
    .line 407
    add-int/lit8 v5, v5, 0x1

    #@74
    goto :goto_0

    #@75
    .line 413
    :cond_3
    const-string/jumbo v8, "n"

    #@78
    goto :goto_3

    #@79
    .line 402
    .end local v1    # "history":[B
    .end local v4    # "i":I
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method getScreenOnTimeFile()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 135
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    #@4
    const-string/jumbo v2, "screen_on_time"

    #@7
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a
    return-object v0
.end method

.method public getScreenOnTimeLocked(J)J
    .locals 5
    .param p1, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    #@2
    .line 127
    .local v0, "screenOnTime":J
    iget-boolean v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 128
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    #@8
    sub-long v2, p1, v2

    #@a
    add-long/2addr v0, v2

    #@b
    .line 130
    :cond_0
    return-wide v0
.end method

.method public isIdleLocked(Ljava/lang/String;IJ)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 252
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    #@3
    move-result-object v1

    #@4
    .line 254
    .local v1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistoryLocked(Landroid/util/ArrayMap;Ljava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    #@7
    move-result-object v0

    #@8
    .line 255
    .local v0, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    if-nez v0, :cond_0

    #@a
    .line 256
    const/4 v2, 0x0

    #@b
    return v2

    #@c
    .line 258
    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->hasPassedThresholdsLocked(Lcom/android/server/usage/AppIdleHistory$PackageHistory;J)Z

    #@f
    move-result v2

    #@10
    return v2
.end method

.method public onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@5
    .line 247
    return-void
.end method

.method public reportUsageLocked(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 178
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    #@3
    move-result-object v1

    #@4
    .line 179
    .local v1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistoryLocked(Landroid/util/ArrayMap;Ljava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    #@7
    move-result-object v0

    #@8
    .line 182
    .local v0, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->shiftHistoryToNow(Landroid/util/ArrayMap;J)V

    #@b
    .line 184
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    #@d
    .line 185
    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    #@f
    sub-long v4, p3, v4

    #@11
    .line 184
    add-long/2addr v2, v4

    #@12
    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    #@14
    .line 186
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    #@17
    move-result-wide v2

    #@18
    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    #@1a
    .line 187
    iget-object v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    #@1c
    const/4 v3, 0x3

    #@1d
    const/16 v4, 0x63

    #@1f
    aput-byte v3, v2, v4

    #@21
    .line 177
    return-void
.end method

.method public setIdle(Ljava/lang/String;IJ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 191
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    #@3
    move-result-object v1

    #@4
    .line 192
    .local v1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistoryLocked(Landroid/util/ArrayMap;Ljava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    #@7
    move-result-object v0

    #@8
    .line 195
    .local v0, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->shiftHistoryToNow(Landroid/util/ArrayMap;J)V

    #@b
    .line 197
    iget-object v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    #@d
    const/16 v3, 0x63

    #@f
    aget-byte v4, v2, v3

    #@11
    and-int/lit8 v4, v4, -0x3

    #@13
    int-to-byte v4, v4

    #@14
    aput-byte v4, v2, v3

    #@16
    .line 190
    return-void
.end method

.method public setIdleLocked(Ljava/lang/String;IZJ)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 267
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    #@3
    move-result-object v1

    #@4
    .line 268
    .local v1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-direct {p0, v1, p1, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistoryLocked(Landroid/util/ArrayMap;Ljava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    #@7
    move-result-object v0

    #@8
    .line 270
    .local v0, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    invoke-direct {p0, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTimeLocked(J)J

    #@b
    move-result-wide v2

    #@c
    .line 271
    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedTimeThreshold:J

    #@e
    .line 270
    sub-long/2addr v2, v4

    #@f
    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    #@11
    .line 272
    invoke-virtual {p0, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    #@14
    move-result-wide v4

    #@15
    .line 273
    if-eqz p3, :cond_0

    #@17
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnTimeThreshold:J

    #@19
    .line 272
    :goto_0
    sub-long v2, v4, v2

    #@1b
    .line 273
    const-wide/16 v4, 0x3e8

    #@1d
    .line 272
    sub-long/2addr v2, v4

    #@1e
    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    #@20
    .line 266
    return-void

    #@21
    .line 273
    :cond_0
    const-wide/16 v2, 0x0

    #@23
    goto :goto_0
.end method

.method public setThresholds(JJ)V
    .locals 1
    .param p1, "elapsedTimeThreshold"    # J
    .param p3, "screenOnTimeThreshold"    # J

    #@0
    .prologue
    .line 108
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedTimeThreshold:J

    #@2
    .line 109
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnTimeThreshold:J

    #@4
    .line 107
    return-void
.end method

.method public updateDisplayLocked(ZJ)V
    .locals 4
    .param p1, "screenOn"    # Z
    .param p2, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    #@2
    if-ne p1, v0, :cond_0

    #@4
    return-void

    #@5
    .line 115
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    #@7
    .line 116
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 117
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    #@d
    .line 112
    :goto_0
    return-void

    #@e
    .line 119
    :cond_1
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    #@10
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    #@12
    sub-long v2, p2, v2

    #@14
    add-long/2addr v0, v2

    #@15
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    #@17
    .line 120
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    #@19
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    #@1b
    sub-long v2, p2, v2

    #@1d
    add-long/2addr v0, v2

    #@1e
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    #@20
    .line 121
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    #@22
    goto :goto_0
.end method

.method public writeAppIdleDurationsLocked()V
    .locals 6

    #@0
    .prologue
    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 172
    .local v0, "elapsedRealtime":J
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    #@6
    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    #@8
    sub-long v4, v0, v4

    #@a
    add-long/2addr v2, v4

    #@b
    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    #@d
    .line 173
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    #@f
    .line 174
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTimeLocked()V

    #@12
    .line 169
    return-void
.end method

.method public writeAppIdleTimesLocked(I)V
    .locals 14
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 336
    const/4 v4, 0x0

    #@1
    .line 337
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    #@3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    #@6
    move-result-object v10

    #@7
    invoke-direct {v1, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@a
    .line 339
    .local v1, "appIdleFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@d
    move-result-object v4

    #@e
    .line 340
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    #@10
    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@13
    .line 342
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    #@15
    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@18
    .line 343
    .local v9, "xml":Lcom/android/internal/util/FastXmlSerializer;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1a
    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1d
    move-result-object v10

    #@1e
    invoke-virtual {v9, v2, v10}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@21
    .line 344
    const/4 v10, 0x1

    #@22
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@25
    move-result-object v10

    #@26
    const/4 v11, 0x0

    #@27
    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@2a
    .line 345
    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@2d
    const/4 v11, 0x1

    #@2e
    invoke-virtual {v9, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@31
    .line 347
    const-string/jumbo v10, "packages"

    #@34
    const/4 v11, 0x0

    #@35
    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@38
    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    #@3b
    move-result-object v8

    #@3c
    .line 350
    .local v8, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@3f
    move-result v0

    #@40
    .line 351
    .local v0, "N":I
    const/4 v6, 0x0

    #@41
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    #@43
    .line 352
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    check-cast v7, Ljava/lang/String;

    #@49
    .line 353
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@4c
    move-result-object v5

    #@4d
    check-cast v5, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    #@4f
    .line 354
    .local v5, "history":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    const-string/jumbo v10, "package"

    #@52
    const/4 v11, 0x0

    #@53
    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@56
    .line 355
    const-string/jumbo v10, "name"

    #@59
    const/4 v11, 0x0

    #@5a
    invoke-virtual {v9, v11, v10, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5d
    .line 356
    const-string/jumbo v10, "elapsedIdleTime"

    #@60
    .line 357
    iget-wide v12, v5, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    #@62
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@65
    move-result-object v11

    #@66
    .line 356
    const/4 v12, 0x0

    #@67
    invoke-virtual {v9, v12, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6a
    .line 358
    const-string/jumbo v10, "screenIdleTime"

    #@6d
    .line 359
    iget-wide v12, v5, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    #@6f
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@72
    move-result-object v11

    #@73
    .line 358
    const/4 v12, 0x0

    #@74
    invoke-virtual {v9, v12, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@77
    .line 360
    const-string/jumbo v10, "package"

    #@7a
    const/4 v11, 0x0

    #@7b
    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7e
    .line 351
    add-int/lit8 v6, v6, 0x1

    #@80
    goto :goto_0

    #@81
    .line 363
    .end local v5    # "history":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v10, "packages"

    #@84
    const/4 v11, 0x0

    #@85
    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@88
    .line 364
    invoke-virtual {v9}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    #@8b
    .line 365
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8e
    .line 335
    .end local v0    # "N":I
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    .end local v8    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    .end local v9    # "xml":Lcom/android/internal/util/FastXmlSerializer;
    :goto_1
    return-void

    #@8f
    .line 366
    :catch_0
    move-exception v3

    #@90
    .line 367
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@93
    .line 368
    const-string/jumbo v10, "AppIdleHistory"

    #@96
    new-instance v11, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v12, "Error writing app idle file for user "

    #@9e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v11

    #@a2
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v11

    #@a6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v11

    #@aa
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    goto :goto_1
.end method
