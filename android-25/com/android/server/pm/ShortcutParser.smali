.class public Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# static fields
.field private static final DEBUG:Z = false

.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_SHORTCUTS:Ljava/lang/String; = "shortcuts"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;
    .locals 26
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "userId"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityComponent"    # Landroid/content/ComponentName;
    .param p5, "titleResId"    # I
    .param p6, "textResId"    # I
    .param p7, "disabledMessageResId"    # I
    .param p8, "rank"    # I
    .param p9, "iconResId"    # I
    .param p10, "enabled"    # Z

    #@0
    .prologue
    .line 337
    if-eqz p10, :cond_0

    #@2
    const/16 v0, 0x20

    #@4
    :goto_0
    or-int/lit16 v1, v0, 0x100

    #@6
    .line 339
    if-eqz p9, :cond_1

    #@8
    const/4 v0, 0x4

    #@9
    .line 337
    :goto_1
    or-int v22, v1, v0

    #@b
    .line 343
    .local v22, "flags":I
    new-instance v1, Landroid/content/pm/ShortcutInfo;

    #@d
    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@10
    move-result-wide v20

    #@11
    .line 348
    const/4 v6, 0x0

    #@12
    .line 349
    const/4 v7, 0x0

    #@13
    .line 351
    const/4 v9, 0x0

    #@14
    .line 352
    const/4 v10, 0x0

    #@15
    .line 354
    const/4 v12, 0x0

    #@16
    .line 355
    const/4 v13, 0x0

    #@17
    .line 357
    const/4 v15, 0x0

    #@18
    .line 358
    const/16 v16, 0x0

    #@1a
    .line 359
    const/16 v17, 0x0

    #@1c
    .line 361
    const/16 v19, 0x0

    #@1e
    .line 365
    const/16 v24, 0x0

    #@20
    .line 366
    const/16 v25, 0x0

    #@22
    move/from16 v2, p1

    #@24
    move-object/from16 v3, p2

    #@26
    move-object/from16 v4, p3

    #@28
    move-object/from16 v5, p4

    #@2a
    move/from16 v8, p5

    #@2c
    move/from16 v11, p6

    #@2e
    move/from16 v14, p7

    #@30
    move/from16 v18, p8

    #@32
    move/from16 v23, p9

    #@34
    .line 343
    invoke-direct/range {v1 .. v25}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;)V

    #@37
    return-object v1

    #@38
    .line 337
    .end local v22    # "flags":I
    :cond_0
    const/16 v0, 0x40

    #@3a
    goto :goto_0

    #@3b
    .line 339
    :cond_1
    const/4 v0, 0x0

    #@3c
    goto :goto_1
.end method

.method private static parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 3
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    .line 274
    sget-object v2, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    #@8
    .line 273
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 276
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@d
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x3

    #@12
    if-ne v1, v2, :cond_0

    #@14
    .line 277
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v1

    #@19
    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1c
    .line 277
    return-object v1

    #@1d
    .line 279
    :cond_0
    :try_start_1
    const-string/jumbo v1, "ShortcutService"

    #@20
    const-string/jumbo v2, "android:name for shortcut category must be string literal."

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 280
    const/4 v1, 0x0

    #@27
    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2a
    .line 280
    return-object v1

    #@2b
    .line 282
    :catchall_0
    move-exception v1

    #@2c
    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2f
    .line 282
    throw v1
.end method

.method private static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .locals 12
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "rank"    # I

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 291
    sget-object v1, Lcom/android/internal/R$styleable;->Shortcut:[I

    #@8
    .line 290
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v11

    #@c
    .line 293
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    #@d
    :try_start_0
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getType(I)I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x3

    #@12
    if-eq v0, v1, :cond_0

    #@14
    .line 294
    const-string/jumbo v0, "ShortcutService"

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "android:shortcutId must be string literal. activity="

    #@1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 295
    const/4 v0, 0x0

    #@2f
    .line 327
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    #@32
    .line 295
    return-object v0

    #@33
    .line 297
    :cond_0
    const/4 v0, 0x2

    #@34
    :try_start_1
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 298
    .local v2, "id":Ljava/lang/String;
    const/4 v0, 0x1

    #@39
    const/4 v1, 0x1

    #@3a
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3d
    move-result v10

    #@3e
    .line 299
    .local v10, "enabled":Z
    const/4 v0, 0x0

    #@3f
    const/4 v1, 0x0

    #@40
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@43
    move-result v9

    #@44
    .line 300
    .local v9, "iconResId":I
    const/4 v0, 0x3

    #@45
    const/4 v1, 0x0

    #@46
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@49
    move-result v5

    #@4a
    .line 301
    .local v5, "titleResId":I
    const/4 v0, 0x4

    #@4b
    const/4 v1, 0x0

    #@4c
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4f
    move-result v6

    #@50
    .line 303
    .local v6, "textResId":I
    const/4 v0, 0x5

    #@51
    const/4 v1, 0x0

    #@52
    .line 302
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@55
    move-result v7

    #@56
    .line 305
    .local v7, "disabledMessageResId":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_1

    #@5c
    .line 306
    const-string/jumbo v0, "ShortcutService"

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v3, "android:shortcutId must be provided. activity="

    #@67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    .line 307
    const/4 v0, 0x0

    #@77
    .line 327
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    #@7a
    .line 307
    return-object v0

    #@7b
    .line 309
    :cond_1
    if-nez v5, :cond_2

    #@7d
    .line 310
    :try_start_2
    const-string/jumbo v0, "ShortcutService"

    #@80
    new-instance v1, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v3, "android:shortcutShortLabel must be provided. activity="

    #@88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@97
    .line 311
    const/4 v0, 0x0

    #@98
    .line 327
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    #@9b
    .line 311
    return-object v0

    #@9c
    :cond_2
    move-object v0, p0

    #@9d
    move/from16 v1, p4

    #@9f
    move-object v3, p2

    #@a0
    move-object v4, p3

    #@a1
    move/from16 v8, p5

    #@a3
    .line 314
    :try_start_3
    invoke-static/range {v0 .. v10}, Lcom/android/server/pm/ShortcutParser;->createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a6
    move-result-object v0

    #@a7
    .line 327
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    #@aa
    .line 314
    return-object v0

    #@ab
    .line 326
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "titleResId":I
    .end local v6    # "textResId":I
    .end local v7    # "disabledMessageResId":I
    .end local v9    # "iconResId":I
    .end local v10    # "enabled":Z
    :catchall_0
    move-exception v0

    #@ac
    .line 327
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    #@af
    .line 326
    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    .line 67
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    #@7
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@a
    move-result v7

    #@b
    if-nez v7, :cond_1

    #@d
    .line 68
    :cond_0
    return-object v9

    #@e
    .line 71
    :cond_1
    const/4 v5, 0x0

    #@f
    .line 74
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@12
    move-result v6

    #@13
    .line 75
    .local v6, "size":I
    const/4 v4, 0x0

    #@14
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_4

    #@16
    .line 76
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v7

    #@1a
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@1c
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1e
    .line 77
    .local v1, "activityInfoNoMetadata":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_3

    #@20
    .line 75
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 83
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    #@26
    move-result-object v7

    #@27
    .line 82
    invoke-virtual {p0, v7, p2}, Lcom/android/server/pm/ShortcutService;->getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@2a
    move-result-object v2

    #@2b
    .line 84
    .local v2, "activityInfoWithMetadata":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_2

    #@2d
    .line 85
    invoke-static {p0, v2, p1, p2, v5}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result-object v5

    #@31
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto :goto_1

    #@32
    .line 89
    .end local v1    # "activityInfoNoMetadata":Landroid/content/pm/ActivityInfo;
    .end local v2    # "activityInfoWithMetadata":Landroid/content/pm/ActivityInfo;
    .end local v4    # "i":I
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v6    # "size":I
    :catch_0
    move-exception v3

    #@33
    .line 93
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v8, "Exception caught while parsing shortcut XML for package="

    #@3b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v7

    #@47
    .line 92
    invoke-virtual {p0, v7, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4a
    .line 94
    return-object v9

    #@4b
    .line 96
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "i":I
    .restart local v6    # "size":I
    :cond_4
    return-object v5
.end method

.method private static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 25
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    .local p4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/16 v18, 0x0

    #@2
    .line 110
    .local v18, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v2, "android.app.shortcuts"

    #@5
    move-object/from16 v0, p0

    #@7
    move-object/from16 v1, p1

    #@9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    move-result-object v18

    #@d
    .line 111
    .local v18, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v18, :cond_1

    #@f
    .line 265
    if-eqz v18, :cond_0

    #@11
    .line 266
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    #@14
    .line 112
    :cond_0
    return-object p4

    #@15
    .line 115
    :cond_1
    :try_start_1
    new-instance v5, Landroid/content/ComponentName;

    #@17
    move-object/from16 v0, p1

    #@19
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1b
    move-object/from16 v0, p2

    #@1d
    invoke-direct {v5, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 117
    .local v5, "activity":Landroid/content/ComponentName;
    invoke-static/range {v18 .. v18}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@23
    move-result-object v3

    #@24
    .line 121
    .local v3, "attrs":Landroid/util/AttributeSet;
    const/4 v7, 0x0

    #@25
    .line 122
    .local v7, "rank":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    #@28
    move-result v15

    #@29
    .line 123
    .local v15, "maxShortcuts":I
    const/16 v17, 0x0

    #@2b
    .line 127
    .local v17, "numShortcuts":I
    const/4 v9, 0x0

    #@2c
    .line 129
    .local v9, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v8, 0x0

    #@2d
    .line 130
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    .local v14, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    move-object/from16 v19, p4

    #@34
    .line 133
    .end local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v19, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_2
    :goto_0
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I

    #@37
    move-result v22

    #@38
    .local v22, "type":I
    const/4 v2, 0x1

    #@39
    move/from16 v0, v22

    #@3b
    if-eq v0, v2, :cond_15

    #@3d
    .line 134
    const/4 v2, 0x3

    #@3e
    move/from16 v0, v22

    #@40
    if-ne v0, v2, :cond_3

    #@42
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@45
    move-result v2

    #@46
    if-lez v2, :cond_15

    #@48
    .line 135
    :cond_3
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@4b
    move-result v10

    #@4c
    .line 136
    .local v10, "depth":I
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4f
    move-result-object v21

    #@50
    .line 139
    .local v21, "tag":Ljava/lang/String;
    const/4 v2, 0x3

    #@51
    move/from16 v0, v22

    #@53
    if-ne v0, v2, :cond_a

    #@55
    const/4 v2, 0x2

    #@56
    if-ne v10, v2, :cond_a

    #@58
    const-string/jumbo v2, "shortcut"

    #@5b
    move-object/from16 v0, v21

    #@5d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_a

    #@63
    .line 140
    if-eqz v9, :cond_2

    #@65
    .line 144
    move-object/from16 v20, v9

    #@67
    .line 145
    .local v20, "si":Landroid/content/pm/ShortcutInfo;
    const/4 v9, 0x0

    #@68
    .line 147
    .restart local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    #@6b
    move-result v2

    #@6c
    if-eqz v2, :cond_5

    #@6e
    .line 148
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@71
    move-result v2

    #@72
    if-nez v2, :cond_6

    #@74
    .line 149
    const-string/jumbo v2, "ShortcutService"

    #@77
    new-instance v4, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v6, "Shortcut "

    #@7f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    const-string/jumbo v6, " has no intent. Skipping it."

    #@8e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v4

    #@92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v4

    #@96
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@99
    goto :goto_0

    #@9a
    .line 264
    .end local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v10    # "depth":I
    .end local v20    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v21    # "tag":Ljava/lang/String;
    .end local v22    # "type":I
    :catchall_0
    move-exception v2

    #@9b
    move-object/from16 p4, v19

    #@9d
    .line 265
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "activity":Landroid/content/ComponentName;
    .end local v7    # "rank":I
    .end local v14    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v15    # "maxShortcuts":I
    .end local v17    # "numShortcuts":I
    .end local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :goto_1
    if-eqz v18, :cond_4

    #@9f
    .line 266
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    #@a2
    .line 264
    :cond_4
    throw v2

    #@a3
    .line 154
    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "activity":Landroid/content/ComponentName;
    .restart local v7    # "rank":I
    .restart local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v10    # "depth":I
    .restart local v14    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v15    # "maxShortcuts":I
    .restart local v17    # "numShortcuts":I
    .restart local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v20    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v21    # "tag":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_5
    :try_start_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    #@a6
    .line 155
    new-instance v2, Landroid/content/Intent;

    #@a8
    const-string/jumbo v4, "android.intent.action.VIEW"

    #@ab
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@ae
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b1
    .line 158
    :cond_6
    move/from16 v0, v17

    #@b3
    if-lt v0, v15, :cond_8

    #@b5
    .line 159
    const-string/jumbo v2, "ShortcutService"

    #@b8
    new-instance v4, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v6, "More than "

    #@c0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v4

    #@c4
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v4

    #@c8
    const-string/jumbo v6, " shortcuts found for "

    #@cb
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v4

    #@cf
    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    #@d2
    move-result-object v6

    #@d3
    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v4

    #@d7
    .line 160
    const-string/jumbo v6, ". Skipping the rest."

    #@da
    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v4

    #@de
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v4

    #@e2
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e5
    .line 265
    if-eqz v18, :cond_7

    #@e7
    .line 266
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    #@ea
    .line 161
    :cond_7
    return-object v19

    #@eb
    .line 165
    :cond_8
    const/4 v2, 0x0

    #@ec
    :try_start_4
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ef
    move-result-object v2

    #@f0
    check-cast v2, Landroid/content/Intent;

    #@f2
    .line 166
    const v4, 0x1000c000

    #@f5
    .line 165
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@f8
    .line 170
    :try_start_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@fb
    move-result v2

    #@fc
    new-array v2, v2, [Landroid/content/Intent;

    #@fe
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@101
    move-result-object v2

    #@102
    check-cast v2, [Landroid/content/Intent;

    #@104
    move-object/from16 v0, v20

    #@106
    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@109
    .line 178
    :try_start_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    #@10c
    .line 180
    if-eqz v8, :cond_9

    #@10e
    .line 181
    move-object/from16 v0, v20

    #@110
    invoke-virtual {v0, v8}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    #@113
    .line 182
    const/4 v8, 0x0

    #@114
    .line 185
    :cond_9
    if-nez v19, :cond_17

    #@116
    .line 186
    new-instance p4, Ljava/util/ArrayList;

    #@118
    invoke-direct/range {p4 .. p4}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@11b
    .line 188
    .end local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :goto_2
    :try_start_7
    move-object/from16 v0, p4

    #@11d
    move-object/from16 v1, v20

    #@11f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@122
    .line 189
    add-int/lit8 v17, v17, 0x1

    #@124
    .line 190
    add-int/lit8 v7, v7, 0x1

    #@126
    move-object/from16 v19, p4

    #@128
    .line 194
    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_0

    #@12a
    .line 171
    :catch_0
    move-exception v11

    #@12b
    .line 175
    .local v11, "e":Ljava/lang/RuntimeException;
    :try_start_8
    const-string/jumbo v2, "ShortcutService"

    #@12e
    const-string/jumbo v4, "Shortcut\'s extras contain un-persistable values. Skipping it."

    #@131
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@134
    goto/16 :goto_0

    #@136
    .line 198
    .end local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v20    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_a
    const/4 v2, 0x2

    #@137
    move/from16 v0, v22

    #@139
    if-ne v0, v2, :cond_2

    #@13b
    .line 202
    const/4 v2, 0x1

    #@13c
    if-ne v10, v2, :cond_b

    #@13e
    const-string/jumbo v2, "shortcuts"

    #@141
    move-object/from16 v0, v21

    #@143
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@146
    move-result v2

    #@147
    if-nez v2, :cond_2

    #@149
    .line 205
    :cond_b
    const/4 v2, 0x2

    #@14a
    if-ne v10, v2, :cond_e

    #@14c
    const-string/jumbo v2, "shortcut"

    #@14f
    move-object/from16 v0, v21

    #@151
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@154
    move-result v2

    #@155
    if-eqz v2, :cond_e

    #@157
    move-object/from16 v2, p0

    #@159
    move-object/from16 v4, p2

    #@15b
    move/from16 v6, p3

    #@15d
    .line 206
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    #@160
    move-result-object v20

    #@161
    .line 208
    .restart local v20    # "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v20, :cond_2

    #@163
    .line 215
    if-eqz v19, :cond_d

    #@165
    .line 216
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@168
    move-result v2

    #@169
    add-int/lit8 v12, v2, -0x1

    #@16b
    .local v12, "i":I
    :goto_3
    if-ltz v12, :cond_d

    #@16d
    .line 217
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@170
    move-result-object v4

    #@171
    move-object/from16 v0, v19

    #@173
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@176
    move-result-object v2

    #@177
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    #@179
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@17c
    move-result-object v2

    #@17d
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@180
    move-result v2

    #@181
    if-eqz v2, :cond_c

    #@183
    .line 218
    const-string/jumbo v2, "ShortcutService"

    #@186
    const-string/jumbo v4, "Duplicate shortcut ID detected. Skipping it."

    #@189
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18c
    goto/16 :goto_0

    #@18e
    .line 216
    :cond_c
    add-int/lit8 v12, v12, -0x1

    #@190
    goto :goto_3

    #@191
    .line 223
    .end local v12    # "i":I
    :cond_d
    move-object/from16 v9, v20

    #@193
    .line 224
    .local v9, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v8, 0x0

    #@194
    .line 225
    .restart local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_0

    #@196
    .line 227
    .end local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v20    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_e
    const/4 v2, 0x3

    #@197
    if-ne v10, v2, :cond_11

    #@199
    const-string/jumbo v2, "intent"

    #@19c
    move-object/from16 v0, v21

    #@19e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a1
    move-result v2

    #@1a2
    if-eqz v2, :cond_11

    #@1a4
    .line 228
    if-eqz v9, :cond_f

    #@1a6
    .line 229
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    #@1a9
    move-result v2

    #@1aa
    if-eqz v2, :cond_f

    #@1ac
    .line 234
    move-object/from16 v0, p0

    #@1ae
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@1b0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b3
    move-result-object v2

    #@1b4
    move-object/from16 v0, v18

    #@1b6
    invoke-static {v2, v0, v3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    #@1b9
    move-result-object v13

    #@1ba
    .line 236
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1bd
    move-result-object v2

    #@1be
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1c1
    move-result v2

    #@1c2
    if-eqz v2, :cond_10

    #@1c4
    .line 237
    const-string/jumbo v2, "ShortcutService"

    #@1c7
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1cc
    const-string/jumbo v6, "Shortcut intent action must be provided. activity="

    #@1cf
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v4

    #@1d3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v4

    #@1d7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1da
    move-result-object v4

    #@1db
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1de
    .line 238
    const/4 v9, 0x0

    #@1df
    .line 239
    .local v9, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    goto/16 :goto_0

    #@1e1
    .line 230
    .end local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_f
    const-string/jumbo v2, "ShortcutService"

    #@1e4
    const-string/jumbo v4, "Ignoring excessive intent tag."

    #@1e7
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1ea
    goto/16 :goto_0

    #@1ec
    .line 241
    .restart local v13    # "intent":Landroid/content/Intent;
    :cond_10
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ef
    goto/16 :goto_0

    #@1f1
    .line 244
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_11
    const/4 v2, 0x3

    #@1f2
    if-ne v10, v2, :cond_14

    #@1f4
    const-string/jumbo v2, "categories"

    #@1f7
    move-object/from16 v0, v21

    #@1f9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fc
    move-result v2

    #@1fd
    if-eqz v2, :cond_14

    #@1ff
    .line 245
    if-eqz v9, :cond_2

    #@201
    .line 246
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    #@204
    move-result-object v2

    #@205
    if-nez v2, :cond_2

    #@207
    .line 249
    move-object/from16 v0, p0

    #@209
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutParser;->parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    #@20c
    move-result-object v16

    #@20d
    .line 250
    .local v16, "name":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@210
    move-result v2

    #@211
    if-eqz v2, :cond_12

    #@213
    .line 251
    const-string/jumbo v2, "ShortcutService"

    #@216
    new-instance v4, Ljava/lang/StringBuilder;

    #@218
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21b
    const-string/jumbo v6, "Empty category found. activity="

    #@21e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v4

    #@222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v4

    #@226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@229
    move-result-object v4

    #@22a
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22d
    goto/16 :goto_0

    #@22f
    .line 255
    :cond_12
    if-nez v8, :cond_13

    #@231
    .line 256
    new-instance v8, Landroid/util/ArraySet;

    #@233
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    #@236
    .line 258
    :cond_13
    move-object/from16 v0, v16

    #@238
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@23b
    goto/16 :goto_0

    #@23d
    .line 262
    .end local v16    # "name":Ljava/lang/String;
    :cond_14
    const-string/jumbo v2, "ShortcutService"

    #@240
    const-string/jumbo v4, "Invalid tag \'%s\' found at depth %d"

    #@243
    const/4 v6, 0x2

    #@244
    new-array v6, v6, [Ljava/lang/Object;

    #@246
    const/16 v23, 0x0

    #@248
    aput-object v21, v6, v23

    #@24a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24d
    move-result-object v23

    #@24e
    const/16 v24, 0x1

    #@250
    aput-object v23, v6, v24

    #@252
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@255
    move-result-object v4

    #@256
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@259
    goto/16 :goto_0

    #@25b
    .line 265
    .end local v10    # "depth":I
    .end local v21    # "tag":Ljava/lang/String;
    :cond_15
    if-eqz v18, :cond_16

    #@25d
    .line 266
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    #@260
    .line 269
    :cond_16
    return-object v19

    #@261
    .line 264
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "activity":Landroid/content/ComponentName;
    .end local v7    # "rank":I
    .end local v14    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v15    # "maxShortcuts":I
    .end local v17    # "numShortcuts":I
    .end local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v22    # "type":I
    .restart local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_1
    move-exception v2

    #@262
    goto/16 :goto_1

    #@264
    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "activity":Landroid/content/ComponentName;
    .restart local v7    # "rank":I
    .restart local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v10    # "depth":I
    .restart local v14    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v15    # "maxShortcuts":I
    .restart local v17    # "numShortcuts":I
    .restart local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v20    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v21    # "tag":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_17
    move-object/from16 p4, v19

    #@266
    .end local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_2
.end method
