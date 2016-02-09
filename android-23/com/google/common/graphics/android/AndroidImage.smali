.class public Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
.super Ljava/lang/Object;
.source "AndroidImage.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;
    }
.end annotation


# static fields
.field private static volatile bitmapCount:I


# instance fields
.field private volatile bitmap:Landroid/graphics/Bitmap;

.field private final isOriginal:Z

.field private pinned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 45
    sput v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    #@3
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 78
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(IIZ)V

    #@4
    .line 79
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "processAlpha"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    #@6
    .line 82
    if-nez p3, :cond_0

    #@8
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@a
    .line 84
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@10
    .line 85
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@12
    if-eqz v1, :cond_1

    #@14
    const-class v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@16
    .line 88
    monitor-enter v2

    #@17
    .line 89
    :try_start_0
    sget v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    #@1d
    .line 90
    const/4 v1, 0x1

    #@1e
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    #@20
    .line 91
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 92
    return-void

    #@22
    .line 82
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@24
    goto :goto_0

    #@25
    .line 86
    .restart local v0    # "config":Landroid/graphics/Bitmap$Config;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@27
    const-string/jumbo v2, "Null Bitmap!"

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 91
    :catchall_0
    move-exception v1

    #@2f
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "autoScale"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "stringIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    #@1
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    #@6
    .line 119
    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 121
    .local v0, "cleanName":Ljava/lang/String;
    if-nez p2, :cond_1

    #@c
    .line 139
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@e
    if-eqz v3, :cond_3

    #@10
    .line 144
    :goto_1
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@12
    if-eqz v3, :cond_4

    #@14
    const-class v4, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@16
    .line 148
    monitor-enter v4

    #@17
    .line 149
    :try_start_0
    sget v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    #@19
    add-int/lit8 v3, v3, 0x1

    #@1b
    sput v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    #@1d
    .line 150
    const/4 v3, 0x1

    #@1e
    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    #@20
    .line 151
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 152
    return-void

    #@22
    .line 123
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/lang/Integer;

    #@28
    .line 124
    .local v2, "resourceId":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    #@2a
    const/4 v1, 0x0

    #@2b
    .line 126
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@2d
    if-eq p4, v3, :cond_2

    #@2f
    .line 131
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@36
    move-result v4

    #@37
    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@3a
    move-result-object v3

    #@3b
    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@3d
    .line 132
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@3f
    if-ne p4, v3, :cond_0

    #@41
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@43
    if-eqz v3, :cond_0

    #@45
    .line 134
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@47
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPixelsPerInch()I

    #@4e
    move-result v4

    #@4f
    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    #@52
    goto :goto_0

    #@53
    .line 128
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    #@55
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@58
    .line 129
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    #@5a
    goto :goto_2

    #@5b
    .line 141
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "resourceId":Ljava/lang/Integer;
    :cond_3
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@5e
    move-result-object v3

    #@5f
    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@61
    goto :goto_1

    #@62
    .line 145
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    #@64
    new-instance v4, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v5, "Null Bitmap! \""

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    const-string/jumbo v5, "\"; if seen during a test, "

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    const-string/jumbo v5, "this usually means that the image file needs to be added to the test.config file"

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@89
    throw v3

    #@8a
    .line 151
    :catchall_0
    move-exception v3

    #@8b
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    throw v3
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    #@6
    .line 105
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@8
    .line 106
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    #@a
    .line 107
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "imageData"    # [B
    .param p2, "imageOffset"    # I
    .param p3, "imageLength"    # I

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    #@6
    .line 60
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@c
    .line 62
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@e
    if-eqz v0, :cond_0

    #@10
    const-class v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@12
    .line 65
    monitor-enter v1

    #@13
    .line 66
    :try_start_0
    sget v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    sput v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    #@19
    .line 67
    const/4 v0, 0x1

    #@1a
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    #@1c
    .line 68
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 69
    return-void

    #@1e
    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@20
    const-string/jumbo v1, "Null Bitmap!"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 68
    :catchall_0
    move-exception v0

    #@28
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    throw v0
.end method

.method private static cleanName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const-string/jumbo v1, "/"

    #@4
    .line 155
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    :goto_0
    const-string/jumbo v1, "."

    #@d
    .line 158
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@10
    move-result v0

    #@11
    .line 159
    .local v0, "dotIndex":I
    if-gtz v0, :cond_1

    #@13
    .line 162
    :goto_1
    return-object p0

    #@14
    .end local v0    # "dotIndex":I
    :cond_0
    const/4 v1, 0x1

    #@15
    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object p0

    #@19
    goto :goto_0

    #@1a
    .line 160
    .restart local v0    # "dotIndex":I
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object p0

    #@1e
    goto :goto_1
.end method

.method private compact()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 267
    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 272
    monitor-enter p0

    #@6
    .line 273
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@8
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    #@9
    .line 274
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@b
    .line 275
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 276
    if-nez v0, :cond_1

    #@e
    .line 292
    :goto_0
    return-void

    #@f
    .line 268
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@11
    .line 269
    return-void

    #@12
    .line 275
    :catchall_0
    move-exception v1

    #@13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    throw v1

    #@15
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    const-class v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@17
    .line 277
    monitor-enter v2

    #@18
    .line 278
    :try_start_2
    sget v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    #@1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    #@1e
    .line 286
    sget v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    #@20
    if-ltz v1, :cond_2

    #@22
    .line 290
    monitor-exit v2

    #@23
    goto :goto_0

    #@24
    :catchall_1
    move-exception v1

    #@25
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    throw v1

    #@27
    .line 288
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    #@29
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@2c
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
.end method


# virtual methods
.method public createScaledImage(IIIIII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 8
    .param p1, "srcX"    # I
    .param p2, "srcY"    # I
    .param p3, "srcWidth"    # I
    .param p4, "srcHeight"    # I
    .param p5, "newWidth"    # I
    .param p6, "newHeight"    # I

    #@0
    .prologue
    .line 204
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;

    #@2
    move-object v1, p0

    #@3
    move v2, p5

    #@4
    move v3, p6

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    move v6, p3

    #@8
    move v7, p4

    #@9
    invoke-direct/range {v0 .. v7}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;-><init>(Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;IIIIII)V

    #@c
    .line 206
    .local v0, "image":Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;
    mul-int v1, p5, p6

    #@e
    const/16 v2, 0x1000

    #@10
    if-lt v1, v2, :cond_0

    #@12
    .line 216
    :goto_0
    return-object v0

    #@13
    .line 214
    :cond_0
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    #@16
    goto :goto_0
.end method

.method public drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;II)V
    .locals 6
    .param p1, "g"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 256
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    #@3
    .line 257
    .local v0, "ag":Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->getCanvas()Landroid/graphics/Canvas;

    #@6
    move-result-object v1

    #@7
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@9
    int-to-float v3, p2

    #@a
    int-to-float v4, p3

    #@b
    const/4 v5, 0x0

    #@c
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@f
    .line 258
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->compact()V

    #@3
    .line 263
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 264
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    .locals 3

    #@0
    .prologue
    .line 195
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    #@2
    new-instance v1, Landroid/graphics/Canvas;

    #@4
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@6
    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@9
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    #@c
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public pin()V
    .locals 1

    #@0
    .prologue
    .line 166
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    #@3
    .line 167
    return-void
.end method

.method public recycle()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 170
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 174
    :cond_0
    :goto_0
    return-void

    #@6
    .line 170
    :cond_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 171
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #@f
    .line 172
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    #@11
    goto :goto_0
.end method
