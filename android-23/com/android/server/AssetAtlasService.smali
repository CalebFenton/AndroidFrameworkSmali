.class public Lcom/android/server/AssetAtlasService;
.super Landroid/view/IAssetAtlas$Stub;
.source "AssetAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AssetAtlasService$Renderer;,
        Lcom/android/server/AssetAtlasService$Configuration;,
        Lcom/android/server/AssetAtlasService$WorkerResult;,
        Lcom/android/server/AssetAtlasService$ComputeWorker;
    }
.end annotation


# static fields
.field public static final ASSET_ATLAS_SERVICE:Ljava/lang/String; = "assetatlas"

.field private static final ATLAS_MAP_ENTRY_FIELD_COUNT:I = 0x3

.field private static final DEBUG_ATLAS:Z = true

.field private static final DEBUG_ATLAS_TEXTURE:Z = false

.field private static final GRAPHIC_BUFFER_USAGE:I = 0x100

.field private static final LOG_TAG:Ljava/lang/String; = "AssetAtlas"

.field private static final MAX_SIZE:I = 0x800

.field private static final MIN_SIZE:I = 0x300

.field private static final PACKING_THRESHOLD:F = 0.8f

.field private static final STEP:I = 0x40


# instance fields
.field private mAtlasMap:[J

.field private final mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBuffer:Landroid/view/GraphicBuffer;

.field private final mContext:Landroid/content/Context;

.field private final mVersionName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/AssetAtlasService;)[J
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[J

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/AssetAtlasService;[J)[J
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[J

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/view/GraphicBuffer;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "buffer"    # Landroid/view/GraphicBuffer;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/AssetAtlasService;->nUploadAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Bitmap;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .locals 1
    .param p1, "bitmaps"    # Ljava/util/ArrayList;
    .param p2, "pixelCount"    # I
    .param p3, "versionName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AssetAtlasService;->chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2()V
    .locals 0

    #@0
    invoke-static {}, Lcom/android/server/AssetAtlasService;->deleteDataFile()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Landroid/view/IAssetAtlas$Stub;-><init>()V

    #@3
    .line 106
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    const/4 v9, 0x0

    #@6
    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@9
    iput-object v8, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    .line 132
    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mContext:Landroid/content/Context;

    #@d
    .line 133
    invoke-static {p1}, Lcom/android/server/AssetAtlasService;->queryVersionName(Landroid/content/Context;)Ljava/lang/String;

    #@10
    move-result-object v8

    #@11
    iput-object v8, p0, Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;

    #@13
    .line 135
    new-instance v0, Ljava/util/HashSet;

    #@15
    const/16 v8, 0x12c

    #@17
    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(I)V

    #@1a
    .line 136
    .local v0, "bitmaps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    const/4 v7, 0x0

    #@1b
    .line 139
    .local v7, "totalPixelCount":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1e
    move-result-object v4

    #@1f
    .line 140
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    #@22
    move-result-object v2

    #@23
    .line 142
    .local v2, "drawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    #@26
    move-result v1

    #@27
    .line 143
    .local v1, "count":I
    const/4 v3, 0x0

    #@28
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@2a
    .line 145
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v8

    #@2e
    check-cast v8, Landroid/graphics/drawable/Drawable$ConstantState;

    #@30
    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    move-result v8

    #@34
    add-int/2addr v7, v8

    #@35
    .line 143
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_0

    #@38
    .line 146
    :catch_0
    move-exception v6

    #@39
    .line 147
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "AssetAtlas"

    #@3c
    const-string/jumbo v9, "Failed to fetch preloaded drawable state"

    #@3f
    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    .line 148
    throw v6

    #@43
    .line 152
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    #@45
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@48
    .line 155
    .local v5, "sortedBitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    new-instance v8, Lcom/android/server/AssetAtlasService$1;

    #@4a
    invoke-direct {v8, p0}, Lcom/android/server/AssetAtlasService$1;-><init>(Lcom/android/server/AssetAtlasService;)V

    #@4d
    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@50
    .line 166
    new-instance v8, Ljava/lang/Thread;

    #@52
    new-instance v9, Lcom/android/server/AssetAtlasService$Renderer;

    #@54
    invoke-direct {v9, p0, v5, v7}, Lcom/android/server/AssetAtlasService$Renderer;-><init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V

    #@57
    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@5a
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    #@5d
    .line 131
    return-void
.end method

.method private checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z
    .locals 3
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 539
    invoke-direct {p0, p2}, Lcom/android/server/AssetAtlasService;->getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 540
    .local v1, "deviceBuildId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 541
    .local v0, "buildId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    return v2
.end method

.method private chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .locals 3
    .param p2, "pixelCount"    # I
    .param p3, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    #@0
    .prologue
    .line 441
    .local p1, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    #@1
    .line 443
    .local v0, "config":Lcom/android/server/AssetAtlasService$Configuration;
    invoke-static {}, Lcom/android/server/AssetAtlasService;->getDataFile()Ljava/io/File;

    #@4
    move-result-object v1

    #@5
    .line 444
    .local v1, "dataFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 445
    invoke-direct {p0, v1, p3}, Lcom/android/server/AssetAtlasService;->readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    #@e
    move-result-object v0

    #@f
    .line 448
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :cond_0
    if-nez v0, :cond_1

    #@11
    .line 449
    invoke-static {p1, p2}, Lcom/android/server/AssetAtlasService;->computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;

    #@14
    move-result-object v0

    #@15
    .line 450
    .local v0, "config":Lcom/android/server/AssetAtlasService$Configuration;
    if-eqz v0, :cond_1

    #@17
    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/AssetAtlasService;->writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V

    #@1a
    .line 453
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :cond_1
    return-object v0
.end method

.method private static computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;
    .locals 23
    .param p1, "pixelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    #@0
    .prologue
    .line 356
    .local p0, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const-string/jumbo v8, "AssetAtlas"

    #@3
    const-string/jumbo v9, "Computing best atlas configuration..."

    #@6
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 358
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@c
    move-result-wide v12

    #@d
    .line 359
    .local v12, "begin":J
    new-instance v8, Ljava/util/ArrayList;

    #@f
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@12
    invoke-static {v8}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    #@15
    move-result-object v10

    #@16
    .line 362
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AssetAtlasService$WorkerResult;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@19
    move-result-object v8

    #@1a
    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    #@1d
    move-result v14

    #@1e
    .line 363
    .local v14, "cpuCount":I
    const/4 v8, 0x1

    #@1f
    if-ne v14, v8, :cond_1

    #@21
    .line 364
    new-instance v4, Lcom/android/server/AssetAtlasService$ComputeWorker;

    #@23
    const/16 v5, 0x300

    #@25
    const/16 v6, 0x800

    #@27
    const/16 v7, 0x40

    #@29
    const/4 v11, 0x0

    #@2a
    move-object/from16 v8, p0

    #@2c
    move/from16 v9, p1

    #@2e
    invoke-direct/range {v4 .. v11}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    #@31
    invoke-virtual {v4}, Lcom/android/server/AssetAtlasService$ComputeWorker;->run()V

    #@34
    .line 395
    :cond_0
    new-instance v8, Lcom/android/server/AssetAtlasService$2;

    #@36
    invoke-direct {v8}, Lcom/android/server/AssetAtlasService$2;-><init>()V

    #@39
    invoke-static {v10, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@3c
    .line 405
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3f
    move-result-wide v8

    #@40
    sub-long/2addr v8, v12

    #@41
    long-to-float v8, v8

    #@42
    const/high16 v9, 0x447a0000    # 1000.0f

    #@44
    div-float/2addr v8, v9

    #@45
    const/high16 v9, 0x447a0000    # 1000.0f

    #@47
    div-float/2addr v8, v9

    #@48
    const/high16 v9, 0x447a0000    # 1000.0f

    #@4a
    div-float v15, v8, v9

    #@4c
    .line 406
    .local v15, "delay":F
    const-string/jumbo v8, "AssetAtlas"

    #@4f
    const-string/jumbo v9, "Found best atlas configuration (out of %d) in %.2fs"

    #@52
    const/16 v20, 0x2

    #@54
    move/from16 v0, v20

    #@56
    new-array v0, v0, [Ljava/lang/Object;

    #@58
    move-object/from16 v20, v0

    #@5a
    .line 407
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@5d
    move-result v21

    #@5e
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v21

    #@62
    const/16 v22, 0x0

    #@64
    aput-object v21, v20, v22

    #@66
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@69
    move-result-object v21

    #@6a
    const/16 v22, 0x1

    #@6c
    aput-object v21, v20, v22

    #@6e
    .line 406
    move-object/from16 v0, v20

    #@70
    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@73
    move-result-object v9

    #@74
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 410
    const/4 v8, 0x0

    #@78
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7b
    move-result-object v19

    #@7c
    check-cast v19, Lcom/android/server/AssetAtlasService$WorkerResult;

    #@7e
    .line 411
    .local v19, "result":Lcom/android/server/AssetAtlasService$WorkerResult;
    new-instance v8, Lcom/android/server/AssetAtlasService$Configuration;

    #@80
    move-object/from16 v0, v19

    #@82
    iget-object v9, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->type:Landroid/graphics/Atlas$Type;

    #@84
    move-object/from16 v0, v19

    #@86
    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    #@88
    move/from16 v20, v0

    #@8a
    move-object/from16 v0, v19

    #@8c
    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    #@8e
    move/from16 v21, v0

    #@90
    move-object/from16 v0, v19

    #@92
    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    #@94
    move/from16 v22, v0

    #@96
    move/from16 v0, v20

    #@98
    move/from16 v1, v21

    #@9a
    move/from16 v2, v22

    #@9c
    invoke-direct {v8, v9, v0, v1, v2}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;III)V

    #@9f
    return-object v8

    #@a0
    .line 366
    .end local v15    # "delay":F
    .end local v19    # "result":Lcom/android/server/AssetAtlasService$WorkerResult;
    :cond_1
    add-int/lit8 v8, v14, -0x1

    #@a2
    mul-int/lit8 v8, v8, 0x40

    #@a4
    add-int/lit16 v5, v8, 0x300

    #@a6
    .line 367
    .local v5, "start":I
    const/16 v6, 0x800

    #@a8
    .line 368
    .local v6, "end":I
    mul-int/lit8 v7, v14, 0x40

    #@aa
    .line 370
    .local v7, "step":I
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    #@ac
    invoke-direct {v11, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@af
    .line 372
    .local v11, "signal":Ljava/util/concurrent/CountDownLatch;
    const/16 v17, 0x0

    #@b1
    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    #@b3
    if-ge v0, v14, :cond_2

    #@b5
    .line 373
    new-instance v4, Lcom/android/server/AssetAtlasService$ComputeWorker;

    #@b7
    move-object/from16 v8, p0

    #@b9
    move/from16 v9, p1

    #@bb
    invoke-direct/range {v4 .. v11}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    #@be
    .line 375
    .local v4, "worker":Lcom/android/server/AssetAtlasService$ComputeWorker;
    new-instance v8, Ljava/lang/Thread;

    #@c0
    new-instance v9, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v20, "Atlas Worker #"

    #@c8
    move-object/from16 v0, v20

    #@ca
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v9

    #@ce
    add-int/lit8 v20, v17, 0x1

    #@d0
    move/from16 v0, v20

    #@d2
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v9

    #@d6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v9

    #@da
    invoke-direct {v8, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@dd
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    #@e0
    .line 372
    add-int/lit8 v17, v17, 0x1

    #@e2
    add-int/lit8 v5, v5, -0x40

    #@e4
    add-int/lit8 v6, v6, -0x40

    #@e6
    goto :goto_0

    #@e7
    .line 380
    .end local v4    # "worker":Lcom/android/server/AssetAtlasService$ComputeWorker;
    :cond_2
    const-wide/16 v8, 0xa

    #@e9
    :try_start_0
    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@eb
    move-object/from16 v0, v20

    #@ed
    invoke-virtual {v11, v8, v9, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f0
    move-result v18

    #@f1
    .line 386
    .local v18, "isAllWorkerFinished":Z
    if-nez v18, :cond_0

    #@f3
    .line 389
    const-string/jumbo v8, "AssetAtlas"

    #@f6
    const-string/jumbo v9, "Could not complete configuration computation before timeout."

    #@f9
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@fc
    .line 390
    const/4 v8, 0x0

    #@fd
    return-object v8

    #@fe
    .line 381
    .end local v18    # "isAllWorkerFinished":Z
    :catch_0
    move-exception v16

    #@ff
    .line 382
    .local v16, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v8, "AssetAtlas"

    #@102
    const-string/jumbo v9, "Could not complete configuration computation"

    #@105
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@108
    .line 383
    const/4 v8, 0x0

    #@109
    return-object v8
.end method

.method private static deleteDataFile()V
    .locals 2

    #@0
    .prologue
    .line 424
    const-string/jumbo v0, "AssetAtlas"

    #@3
    const-string/jumbo v1, "Current configuration inconsistent with assets list"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 425
    invoke-static {}, Lcom/android/server/AssetAtlasService;->getDataFile()Ljava/io/File;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 426
    const-string/jumbo v0, "AssetAtlas"

    #@16
    const-string/jumbo v1, "Could not delete the current configuration"

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 423
    :cond_0
    return-void
.end method

.method private getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "versionName"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x2f

    #@2
    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "ro.build.fingerprint"

    #@a
    const-string/jumbo v2, ""

    #@d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 564
    invoke-direct {p0}, Lcom/android/server/AssetAtlasService;->getFrameworkResourcesFile()Ljava/io/File;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/io/File;->length()J

    #@28
    move-result-wide v2

    #@29
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method

.method private static getDataFile()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 419
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "system"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 420
    .local v0, "systemDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@e
    const-string/jumbo v2, "framework_atlas.config"

    #@11
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@14
    return-object v1
.end method

.method private getFrameworkResourcesFile()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 431
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/android/server/AssetAtlasService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v1

    #@8
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@a
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method private static native nUploadAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Bitmap;)Z
.end method

.method private static queryVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 179
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v3

    #@8
    const/4 v4, 0x0

    #@9
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@c
    move-result-object v1

    #@d
    .line 180
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    return-object v3

    #@10
    .line 181
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@11
    .line 182
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "AssetAtlas"

    #@14
    const-string/jumbo v4, "Could not get package info"

    #@17
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 184
    const/4 v3, 0x0

    #@1b
    return-object v3
.end method

.method private readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .locals 17
    .param p1, "file"    # Ljava/io/File;
    .param p2, "versionName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 495
    const/4 v12, 0x0

    #@1
    .line 496
    .local v12, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    #@2
    .line 498
    .local v8, "config":Lcom/android/server/AssetAtlasService$Configuration;
    :try_start_0
    new-instance v13, Ljava/io/BufferedReader;

    #@4
    new-instance v14, Ljava/io/InputStreamReader;

    #@6
    new-instance v15, Ljava/io/FileInputStream;

    #@8
    move-object/from16 v0, p1

    #@a
    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@d
    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@10
    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 500
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .local v13, "reader":Ljava/io/BufferedReader;
    :try_start_1
    move-object/from16 v0, p0

    #@15
    move-object/from16 v1, p2

    #@17
    invoke-direct {v0, v13, v1}, Lcom/android/server/AssetAtlasService;->checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    #@1a
    move-result v14

    #@1b
    if-eqz v14, :cond_3

    #@1d
    .line 501
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@20
    move-result-object v14

    #@21
    invoke-static {v14}, Landroid/graphics/Atlas$Type;->valueOf(Ljava/lang/String;)Landroid/graphics/Atlas$Type;

    #@24
    move-result-object v3

    #@25
    .line 502
    .local v3, "type":Landroid/graphics/Atlas$Type;
    const/16 v14, 0x300

    #@27
    const/16 v15, 0x800

    #@29
    invoke-static {v13, v14, v15}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    #@2c
    move-result v4

    #@2d
    .line 503
    .local v4, "width":I
    const/16 v14, 0x300

    #@2f
    const/16 v15, 0x800

    #@31
    invoke-static {v13, v14, v15}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    #@34
    move-result v5

    #@35
    .line 504
    .local v5, "height":I
    const/4 v14, 0x0

    #@36
    const v15, 0x7fffffff

    #@39
    invoke-static {v13, v14, v15}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    #@3c
    move-result v6

    #@3d
    .line 505
    .local v6, "count":I
    const/high16 v14, -0x80000000

    #@3f
    const v15, 0x7fffffff

    #@42
    invoke-static {v13, v14, v15}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    #@45
    move-result v7

    #@46
    .line 507
    .local v7, "flags":I
    new-instance v2, Lcom/android/server/AssetAtlasService$Configuration;

    #@48
    invoke-direct/range {v2 .. v7}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;IIII)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4b
    .line 516
    .end local v3    # "type":Landroid/graphics/Atlas$Type;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "count":I
    .end local v7    # "flags":I
    .end local v8    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .local v2, "config":Lcom/android/server/AssetAtlasService$Configuration;
    :goto_0
    if-eqz v13, :cond_0

    #@4d
    .line 518
    :try_start_2
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@50
    :cond_0
    :goto_1
    move-object v12, v13

    #@51
    .line 524
    .end local v13    # "reader":Ljava/io/BufferedReader;
    :goto_2
    return-object v2

    #@52
    .line 519
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v10

    #@53
    .local v10, "e":Ljava/io/IOException;
    goto :goto_1

    #@54
    .line 513
    .end local v2    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v10

    #@55
    .line 514
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string/jumbo v14, "AssetAtlas"

    #@58
    new-instance v15, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v16, "Could not read "

    #@60
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v15

    #@64
    move-object/from16 v0, p1

    #@66
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v15

    #@6a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v15

    #@6e
    invoke-static {v14, v15, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@71
    .line 516
    if-eqz v12, :cond_1

    #@73
    .line 518
    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@76
    .end local v10    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    move-object v2, v8

    #@77
    .restart local v2    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_2

    #@78
    .line 519
    .end local v2    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    #@79
    goto :goto_4

    #@7a
    .line 511
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v9

    #@7b
    .line 512
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .local v9, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_5
    const-string/jumbo v14, "AssetAtlas"

    #@7e
    new-instance v15, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v16, "Could not read "

    #@86
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v15

    #@8a
    move-object/from16 v0, p1

    #@8c
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v15

    #@90
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v15

    #@94
    invoke-static {v14, v15, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@97
    .line 516
    if-eqz v12, :cond_1

    #@99
    .line 518
    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@9c
    goto :goto_4

    #@9d
    .line 519
    :catch_4
    move-exception v10

    #@9e
    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_4

    #@9f
    .line 509
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v11

    #@a0
    .line 510
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    :goto_6
    :try_start_7
    const-string/jumbo v14, "AssetAtlas"

    #@a3
    new-instance v15, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v16, "Invalid parameter value in "

    #@ab
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v15

    #@af
    move-object/from16 v0, p1

    #@b1
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v15

    #@b5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v15

    #@b9
    invoke-static {v14, v15, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@bc
    .line 516
    if-eqz v12, :cond_1

    #@be
    .line 518
    :try_start_8
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    #@c1
    goto :goto_4

    #@c2
    .line 519
    :catch_6
    move-exception v10

    #@c3
    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_4

    #@c4
    .line 515
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v14

    #@c5
    .line 516
    :goto_7
    if-eqz v12, :cond_2

    #@c7
    .line 518
    :try_start_9
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    #@ca
    .line 515
    :cond_2
    :goto_8
    throw v14

    #@cb
    .line 519
    :catch_7
    move-exception v10

    #@cc
    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_8

    #@cd
    .line 515
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    #@ce
    move-object v12, v13

    #@cf
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v12, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    #@d0
    .line 509
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v11

    #@d1
    .restart local v11    # "e":Ljava/lang/IllegalArgumentException;
    move-object v12, v13

    #@d2
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    #@d3
    .line 511
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v9

    #@d4
    .restart local v9    # "e":Ljava/io/FileNotFoundException;
    move-object v12, v13

    #@d5
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    #@d6
    .line 513
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v10

    #@d7
    .restart local v10    # "e":Ljava/io/IOException;
    move-object v12, v13

    #@d8
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3

    #@da
    .end local v10    # "e":Ljava/io/IOException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v2, v8

    #@db
    .restart local v2    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto/16 :goto_0
.end method

.method private static readInt(Ljava/io/BufferedReader;II)I
    .locals 1
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "min"    # I
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 528
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v0

    #@c
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method private writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "config"    # Lcom/android/server/AssetAtlasService$Configuration;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "versionName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 460
    const/4 v2, 0x0

    #@1
    .line 462
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    #@3
    new-instance v4, Ljava/io/OutputStreamWriter;

    #@5
    new-instance v5, Ljava/io/FileOutputStream;

    #@7
    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@a
    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@d
    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 463
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/AssetAtlasService;->getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@17
    .line 464
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    #@1a
    .line 465
    iget-object v4, p1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    #@1c
    invoke-virtual {v4}, Landroid/graphics/Atlas$Type;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@23
    .line 466
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    #@26
    .line 467
    iget v4, p1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    #@28
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@2f
    .line 468
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    #@32
    .line 469
    iget v4, p1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    #@34
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@3b
    .line 470
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    #@3e
    .line 471
    iget v4, p1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    #@40
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@47
    .line 472
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    #@4a
    .line 473
    iget v4, p1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    #@4c
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@53
    .line 474
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@56
    .line 480
    if-eqz v3, :cond_0

    #@58
    .line 482
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@5b
    :cond_0
    :goto_0
    move-object v2, v3

    #@5c
    .line 459
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    #@5d
    .line 483
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    #@5e
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@5f
    .line 477
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    #@60
    .line 478
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v4, "AssetAtlas"

    #@63
    new-instance v5, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v6, "Could not write "

    #@6b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7a
    .line 480
    if-eqz v2, :cond_1

    #@7c
    .line 482
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@7f
    goto :goto_1

    #@80
    .line 483
    :catch_2
    move-exception v1

    #@81
    goto :goto_1

    #@82
    .line 475
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v0

    #@83
    .line 476
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string/jumbo v4, "AssetAtlas"

    #@86
    new-instance v5, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v6, "Could not write "

    #@8e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v5

    #@96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@9d
    .line 480
    if-eqz v2, :cond_1

    #@9f
    .line 482
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@a2
    goto :goto_1

    #@a3
    .line 483
    :catch_4
    move-exception v1

    #@a4
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    #@a5
    .line 479
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@a6
    .line 480
    :goto_4
    if-eqz v2, :cond_2

    #@a8
    .line 482
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@ab
    .line 479
    :cond_2
    :goto_5
    throw v4

    #@ac
    .line 483
    :catch_5
    move-exception v1

    #@ad
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    #@ae
    .line 479
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    #@af
    move-object v2, v3

    #@b0
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    goto :goto_4

    #@b1
    .line 475
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    #@b2
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    #@b3
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_3

    #@b4
    .line 477
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v1

    #@b5
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@b6
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2
.end method


# virtual methods
.method public getBuffer()Landroid/view/GraphicBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getMap()[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[J

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isCompatible(I)Z
    .locals 1
    .param p1, "ppid"    # I

    #@0
    .prologue
    .line 336
    invoke-static {}, Landroid/os/Process;->myPpid()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public systemRunning()V
    .locals 0

    #@0
    .prologue
    .line 191
    return-void
.end method
