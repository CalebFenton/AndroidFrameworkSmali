.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field private static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final DIR_FILES:Ljava/lang/String; = "files"

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final TAG:Ljava/lang/String; = "ContextCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 296
    move-object v0, p0

    #@1
    .line 297
    .local v0, "cur":Ljava/io/File;
    const/4 v3, 0x0

    #@2
    array-length v4, p1

    #@3
    move-object v1, v0

    #@4
    .end local v0    # "cur":Ljava/io/File;
    .local v1, "cur":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_1

    #@6
    aget-object v2, p1, v3

    #@8
    .line 298
    .local v2, "segment":Ljava/lang/String;
    if-nez v1, :cond_0

    #@a
    .line 299
    new-instance v0, Ljava/io/File;

    #@c
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    .line 297
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@11
    move-object v1, v0

    #@12
    .end local v0    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_0

    #@13
    .line 300
    :cond_0
    if-eqz v2, :cond_2

    #@15
    .line 301
    new-instance v0, Ljava/io/File;

    #@17
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1a
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_1

    #@1b
    .line 304
    .end local v0    # "cur":Ljava/io/File;
    .end local v2    # "segment":Ljava/lang/String;
    .restart local v1    # "cur":Ljava/io/File;
    :cond_1
    return-object v1

    #@1c
    .restart local v2    # "segment":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    #@1d
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_1
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 383
    if-nez p1, :cond_0

    #@2
    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "permission is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 387
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@e
    move-result v0

    #@f
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@12
    move-result v1

    #@13
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method private static declared-synchronized createFilesDir(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    const-class v1, Landroid/support/v4/content/ContextCompat;

    #@2
    monitor-enter v1

    #@3
    .line 442
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 443
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1

    #@f
    .line 444
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    monitor-exit v1

    #@16
    .line 446
    return-object p0

    #@17
    .line 448
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ContextCompat"

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Unable to create files subdir "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 449
    const/4 v0, 0x0

    #@36
    monitor-exit v1

    #@37
    return-object v0

    #@38
    :cond_1
    monitor-exit v1

    #@39
    .line 452
    return-object p0

    #@3a
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0
.end method

.method public static final getColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    #@0
    .prologue
    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 365
    .local v0, "version":I
    const/16 v1, 0x17

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 366
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->getColor(Landroid/content/Context;I)I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 368
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    #@12
    move-result v1

    #@13
    return v1
.end method

.method public static final getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    #@0
    .prologue
    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 343
    .local v0, "version":I
    const/16 v1, 0x17

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 344
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 346
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public static final getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    #@0
    .prologue
    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 320
    .local v0, "version":I
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 321
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi21;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 323
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 280
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    .line 281
    .local v1, "version":I
    const/16 v2, 0x13

    #@6
    if-lt v1, v2, :cond_0

    #@8
    .line 282
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 285
    :cond_0
    const/16 v2, 0x8

    #@f
    if-lt v1, v2, :cond_1

    #@11
    .line 286
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    #@14
    move-result-object v0

    #@15
    .line 291
    .local v0, "single":Ljava/io/File;
    :goto_0
    new-array v2, v7, [Ljava/io/File;

    #@17
    aput-object v0, v2, v6

    #@19
    return-object v2

    #@1a
    .line 288
    .end local v0    # "single":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x4

    #@1f
    new-array v3, v3, [Ljava/lang/String;

    #@21
    const-string/jumbo v4, "Android"

    #@24
    aput-object v4, v3, v6

    #@26
    const-string/jumbo v4, "data"

    #@29
    aput-object v4, v3, v7

    #@2b
    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    const/4 v5, 0x2

    #@30
    aput-object v4, v3, v5

    #@32
    const-string/jumbo v4, "cache"

    #@35
    const/4 v5, 0x3

    #@36
    aput-object v4, v3, v5

    #@38
    .line 288
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@3b
    move-result-object v0

    #@3c
    .restart local v0    # "single":Ljava/io/File;
    goto :goto_0
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    .line 221
    .local v1, "version":I
    const/16 v2, 0x13

    #@6
    if-lt v1, v2, :cond_0

    #@8
    .line 222
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 225
    :cond_0
    const/16 v2, 0x8

    #@f
    if-lt v1, v2, :cond_1

    #@11
    .line 226
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    #@14
    move-result-object v0

    #@15
    .line 231
    .local v0, "single":Ljava/io/File;
    :goto_0
    new-array v2, v7, [Ljava/io/File;

    #@17
    aput-object v0, v2, v6

    #@19
    return-object v2

    #@1a
    .line 228
    .end local v0    # "single":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x5

    #@1f
    new-array v3, v3, [Ljava/lang/String;

    #@21
    const-string/jumbo v4, "Android"

    #@24
    aput-object v4, v3, v6

    #@26
    const-string/jumbo v4, "data"

    #@29
    aput-object v4, v3, v7

    #@2b
    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    const/4 v5, 0x2

    #@30
    aput-object v4, v3, v5

    #@32
    const-string/jumbo v4, "files"

    #@35
    const/4 v5, 0x3

    #@36
    aput-object v4, v3, v5

    #@38
    const/4 v4, 0x4

    #@39
    aput-object p1, v3, v4

    #@3b
    .line 228
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@3e
    move-result-object v0

    #@3f
    .restart local v0    # "single":Ljava/io/File;
    goto :goto_0
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    .line 161
    .local v1, "version":I
    const/16 v2, 0x13

    #@6
    if-lt v1, v2, :cond_0

    #@8
    .line 162
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 165
    :cond_0
    const/16 v2, 0xb

    #@f
    if-lt v1, v2, :cond_1

    #@11
    .line 166
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatHoneycomb;->getObbDir(Landroid/content/Context;)Ljava/io/File;

    #@14
    move-result-object v0

    #@15
    .line 171
    .local v0, "single":Ljava/io/File;
    :goto_0
    new-array v2, v7, [Ljava/io/File;

    #@17
    aput-object v0, v2, v6

    #@19
    return-object v2

    #@1a
    .line 168
    .end local v0    # "single":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x3

    #@1f
    new-array v3, v3, [Ljava/lang/String;

    #@21
    const-string/jumbo v4, "Android"

    #@24
    aput-object v4, v3, v6

    #@26
    const-string/jumbo v4, "obb"

    #@29
    aput-object v4, v3, v7

    #@2b
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    const/4 v5, 0x2

    #@30
    aput-object v4, v3, v5

    #@32
    .line 168
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@35
    move-result-object v0

    #@36
    .restart local v0    # "single":Ljava/io/File;
    goto :goto_0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3
    .line 106
    .local v0, "version":I
    const/16 v1, 0x10

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 107
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    #@a
    .line 108
    return v2

    #@b
    .line 109
    :cond_0
    const/16 v1, 0xb

    #@d
    if-lt v0, v1, :cond_1

    #@f
    .line 110
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V

    #@12
    .line 111
    return v2

    #@13
    .line 113
    :cond_1
    const/4 v1, 0x0

    #@14
    return v1
.end method


# virtual methods
.method public final getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 432
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 433
    .local v1, "version":I
    const/16 v2, 0x15

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 434
    invoke-static {p1}, Landroid/support/v4/content/ContextCompatApi21;->getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 436
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@e
    move-result-object v0

    #@f
    .line 437
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    #@11
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@13
    const-string/jumbo v4, "code_cache"

    #@16
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    invoke-static {v2}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method public final getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 407
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 408
    .local v1, "version":I
    const/16 v2, 0x15

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 409
    invoke-static {p1}, Landroid/support/v4/content/ContextCompatApi21;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 411
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@e
    move-result-object v0

    #@f
    .line 412
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    #@11
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@13
    const-string/jumbo v4, "no_backup"

    #@16
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    invoke-static {v2}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method
