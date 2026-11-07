.class public final Landroid/app/WallpaperColors;
.super Ljava/lang/Object;
.source "WallpaperColors.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperColors$ColorsHints;
    }
.end annotation


# static fields
.field private static final greylist-max-o BRIGHT_IMAGE_MEAN_LUMINANCE:F

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DARK_PIXEL_CONTRAST:F = 5.5f

.field private static final greylist-max-o DARK_THEME_MEAN_LUMINANCE:F = 0.3f

.field private static final blacklist DEBUG_DARK_PIXELS:Z = false

.field public static final greylist-max-o HINT_FROM_BITMAP:I = 0x4

.field public static final whitelist HINT_SUPPORTS_DARK_TEXT:I = 0x1

.field public static final whitelist HINT_SUPPORTS_DARK_THEME:I = 0x2

.field private static final greylist-max-o MAX_BITMAP_SIZE:I = 0x70

.field private static final greylist-max-o MAX_DARK_AREA:F

.field private static final greylist-max-o MAX_WALLPAPER_EXTRACTION_AREA:I = 0x3100

.field private static final greylist-max-o MIN_COLOR_OCCURRENCE:F = 0.05f


# instance fields
.field private final blacklist mAllColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mColorHints:I

.field private final blacklist mMainColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 106
    const-string/jumbo v0, "persist.wallpapercolors.threshold"

    const/16 v1, 0x46

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Landroid/app/WallpaperColors;->BRIGHT_IMAGE_MEAN_LUMINANCE:F

    .line 111
    const-string/jumbo v0, "persist.wallpapercolors.max_dark_area"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sput v0, Landroid/app/WallpaperColors;->MAX_DARK_AREA:F

    .line 426
    new-instance v0, Landroid/app/WallpaperColors$1;

    invoke-direct {v0}, Landroid/app/WallpaperColors$1;-><init>()V

    sput-object v0, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V
    .registers 8
    .param p1, "primaryColor"    # Landroid/graphics/Color;
    .param p2, "secondaryColor"    # Landroid/graphics/Color;
    .param p3, "tertiaryColor"    # Landroid/graphics/Color;

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    .line 271
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 272
    .local v0, "tmpHsl":[F
    invoke-virtual {p1}, Landroid/graphics/Color;->toArgb()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 273
    const/4 v1, 0x2

    aget v2, v0, v1

    .line 274
    .local v2, "luminance":F
    const v3, 0x3e99999a    # 0.3f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1d

    .line 275
    iget v3, p0, Landroid/app/WallpaperColors;->mColorHints:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 277
    :cond_1d
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V
    .registers 9
    .param p1, "primaryColor"    # Landroid/graphics/Color;
    .param p2, "secondaryColor"    # Landroid/graphics/Color;
    .param p3, "tertiaryColor"    # Landroid/graphics/Color;
    .param p4, "colorHints"    # I

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    if-eqz p1, :cond_6a

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    .line 299
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/graphics/Color;->toArgb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    if-eqz p2, :cond_43

    .line 302
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/graphics/Color;->toArgb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_43
    if-eqz p3, :cond_67

    .line 306
    if-eqz p2, :cond_5e

    .line 310
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/graphics/Color;->toArgb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    .line 307
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tertiaryColor can\'t be specified when secondaryColor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_67
    :goto_67
    iput p4, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 314
    return-void

    .line 293
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary color should never be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_28

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .local v2, "colorInt":I
    invoke-static {v2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v3

    .line 125
    .local v3, "color":Landroid/graphics/Color;
    iget-object v4, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v2    # "colorInt":I
    .end local v3    # "color":Landroid/graphics/Color;
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 127
    .end local v1    # "i":I
    :cond_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2d
    if-ge v1, v0, :cond_47

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2    # "colorInt":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 131
    .local v3, "population":I
    iget-object v4, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v2    # "colorInt":I
    .end local v3    # "population":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 133
    .end local v1    # "i":I
    :cond_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 134
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;I)V
    .registers 22
    .param p2, "colorHints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 328
    .local p1, "colorToPopulation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object v1, v0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    .line 331
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v2, "colorToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/graphics/cam/Cam;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 333
    .local v4, "color":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .end local v4    # "color":I
    goto :goto_16

    .line 335
    :cond_32
    invoke-static {v2, v1}, Landroid/app/WallpaperColors;->hueProportions(Ljava/util/Map;Ljava/util/Map;)[D

    move-result-object v3

    .line 336
    .local v3, "hueProportions":[D
    nop

    .line 337
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 336
    invoke-static {v4, v2, v3}, Landroid/app/WallpaperColors;->colorToHueProportion(Ljava/util/Set;Ljava/util/Map;[D)Ljava/util/Map;

    move-result-object v4

    .line 339
    .local v4, "colorToHueProportion":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v5, "colorToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 341
    .local v7, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 342
    .local v8, "color":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 343
    .local v9, "proportion":D
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/graphics/cam/Cam;

    invoke-static {v11, v9, v10}, Landroid/app/WallpaperColors;->score(Lcom/android/internal/graphics/cam/Cam;D)D

    move-result-wide v11

    .line 344
    .local v11, "score":D
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .end local v7    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v8    # "color":I
    .end local v9    # "proportion":D
    .end local v11    # "score":D
    goto :goto_4c

    .line 346
    :cond_86
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 347
    .local v6, "mapEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    new-instance v7, Landroid/app/WallpaperColors$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Landroid/app/WallpaperColors$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 349
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v7, "colorsByScoreDescending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 351
    .local v9, "colorToScoreEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v9    # "colorToScoreEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    goto :goto_a0

    .line 354
    :cond_b6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v8, "mainColorInts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_bf
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 357
    .local v10, "color":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/graphics/cam/Cam;

    .line 358
    .local v11, "cam":Lcom/android/internal/graphics/cam/Cam;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_dd
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_103

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 359
    .local v13, "otherColor":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/graphics/cam/Cam;

    .line 360
    .local v14, "otherCam":Lcom/android/internal/graphics/cam/Cam;
    invoke-static {v11, v14}, Landroid/app/WallpaperColors;->hueDiff(Lcom/android/internal/graphics/cam/Cam;Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide v15

    const-wide/high16 v17, 0x402e000000000000L    # 15.0

    cmpg-double v15, v15, v17

    if-gez v15, :cond_102

    .line 361
    goto :goto_bf

    .line 363
    .end local v13    # "otherColor":I
    .end local v14    # "otherCam":Lcom/android/internal/graphics/cam/Cam;
    :cond_102
    goto :goto_dd

    .line 364
    :cond_103
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v10    # "color":I
    .end local v11    # "cam":Lcom/android/internal/graphics/cam/Cam;
    goto :goto_bf

    .line 366
    :cond_10b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v9, "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_114
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 368
    .local v11, "colorInt":I
    invoke-static {v11}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v11    # "colorInt":I
    goto :goto_114

    .line 370
    :cond_12c
    iput-object v9, v0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    .line 371
    move/from16 v10, p2

    iput v10, v0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 372
    return-void
.end method

.method private static blacklist calculateDarkHints(Landroid/graphics/Bitmap;F)I
    .registers 23
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "dimAmount"    # F

    .line 548
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 549
    return v0

    .line 552
    :cond_4
    const-string v1, "WallpaperColors#calculateDarkHints"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 553
    invoke-static/range {p1 .. p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    .line 554
    .end local p1    # "dimAmount":F
    .local v1, "dimAmount":F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v4, v2, [I

    .line 555
    .local v4, "pixels":[I
    const-wide/16 v11, 0x0

    .line 556
    .local v11, "totalLuminance":D
    array-length v2, v4

    int-to-float v2, v2

    sget v3, Landroid/app/WallpaperColors;->MAX_DARK_AREA:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 557
    .local v2, "maxDarkPixels":I
    const/4 v13, 0x0

    .line 558
    .local v13, "darkPixels":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 559
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 558
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 563
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 564
    .local v3, "dimmingLayerAlpha":I
    const/high16 v5, -0x1000000

    invoke-static {v5, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    .line 568
    .local v6, "blackTransparent":I
    const/4 v7, 0x3

    new-array v7, v7, [F

    .line 569
    .local v7, "tmpHsl":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_43
    array-length v9, v4

    if-ge v8, v9, :cond_71

    .line 570
    aget v9, v4, v8

    .line 571
    .local v9, "pixelColor":I
    invoke-static {v9, v7}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 572
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    .line 576
    .local v10, "alpha":I
    invoke-static {v6, v9}, Lcom/android/internal/graphics/ColorUtils;->compositeColors(II)I

    move-result v14

    .line 579
    .local v14, "compositeColors":I
    invoke-static {v14}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v15

    .line 583
    .local v15, "adjustedLuminance":D
    nop

    .line 584
    invoke-static {v9, v5}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    move-result-wide v17

    const-wide/high16 v19, 0x4016000000000000L    # 5.5

    cmpl-double v17, v17, v19

    if-lez v17, :cond_65

    const/16 v17, 0x1

    goto :goto_67

    :cond_65
    move/from16 v17, v0

    .line 585
    .local v17, "satisfiesTextContrast":Z
    :goto_67
    if-nez v17, :cond_6d

    if-eqz v10, :cond_6d

    .line 586
    add-int/lit8 v13, v13, 0x1

    .line 591
    :cond_6d
    add-double/2addr v11, v15

    .line 569
    .end local v9    # "pixelColor":I
    .end local v10    # "alpha":I
    .end local v14    # "compositeColors":I
    .end local v15    # "adjustedLuminance":D
    .end local v17    # "satisfiesTextContrast":Z
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    .line 594
    .end local v8    # "i":I
    :cond_71
    const/4 v0, 0x0

    .line 595
    .local v0, "hints":I
    array-length v5, v4

    int-to-double v8, v5

    div-double v8, v11, v8

    .line 596
    .local v8, "meanLuminance":D
    sget v5, Landroid/app/WallpaperColors;->BRIGHT_IMAGE_MEAN_LUMINANCE:F

    float-to-double v14, v5

    cmpl-double v5, v8, v14

    if-lez v5, :cond_81

    if-gt v13, v2, :cond_81

    .line 597
    or-int/lit8 v0, v0, 0x1

    .line 599
    :cond_81
    const-wide v14, 0x3fd3333340000000L    # 0.30000001192092896

    cmpg-double v5, v8, v14

    if-gez v5, :cond_8c

    .line 600
    or-int/lit8 v0, v0, 0x2

    .line 615
    :cond_8c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 616
    return v0
.end method

.method private static greylist-max-o calculateOptimalSize(II)Landroid/util/Size;
    .registers 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 622
    mul-int v0, p0, p1

    .line 623
    .local v0, "requestedArea":I
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 624
    .local v1, "scale":D
    const/16 v3, 0x3100

    if-le v0, v3, :cond_13

    .line 625
    const-wide v3, 0x40c8800000000000L    # 12544.0

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 627
    :cond_13
    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int v3, v3

    .line 628
    .local v3, "newWidth":I
    int-to-double v4, p1

    mul-double/2addr v4, v1

    double-to-int v4, v4

    .line 631
    .local v4, "newHeight":I
    if-nez v3, :cond_1c

    .line 632
    const/4 v3, 0x1

    .line 634
    :cond_1c
    if-nez v4, :cond_1f

    .line 635
    const/4 v4, 0x1

    .line 638
    :cond_1f
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object v5
.end method

.method private static blacklist colorToHueProportion(Ljava/util/Set;Ljava/util/Map;[D)Ljava/util/Map;
    .registers 12
    .param p2, "hueProportions"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/graphics/cam/Cam;",
            ">;[D)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 384
    .local p0, "colors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p1, "colorToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/graphics/cam/Cam;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v0, "colorToHueProportion":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 386
    .local v2, "color":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/graphics/cam/Cam;

    invoke-virtual {v3}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Landroid/app/WallpaperColors;->wrapDegrees(I)I

    move-result v3

    .line 387
    .local v3, "hue":I
    const-wide/16 v4, 0x0

    .line 388
    .local v4, "proportion":D
    add-int/lit8 v6, v3, -0xf

    .local v6, "i":I
    :goto_33
    add-int/lit8 v7, v3, 0xf

    if-ge v6, v7, :cond_41

    .line 389
    invoke-static {v6}, Landroid/app/WallpaperColors;->wrapDegrees(I)I

    move-result v7

    aget-wide v7, p2, v7

    add-double/2addr v4, v7

    .line 388
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 391
    .end local v6    # "i":I
    :cond_41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v2    # "color":I
    .end local v3    # "hue":I
    .end local v4    # "proportion":D
    goto :goto_9

    .line 393
    :cond_4d
    return-object v0
.end method

.method public static whitelist fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 182
    if-eqz p0, :cond_8

    .line 185
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0

    .line 183
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;
    .registers 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dimAmount"    # F

    .line 200
    const-string v0, "Bitmap can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    const-string v0, "WallpaperColors#fromBitmap"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 203
    .local v0, "bitmapArea":I
    const/4 v1, 0x0

    .line 204
    .local v1, "shouldRecycle":Z
    const/16 v2, 0x3100

    if-le v0, v2, :cond_32

    .line 205
    const/4 v1, 0x1

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    move-result-object v3

    .line 207
    .local v3, "optimalSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 208
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 207
    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 212
    .end local v3    # "optimalSize":Landroid/util/Size;
    :cond_32
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 213
    new-instance v3, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;

    invoke-direct {v3}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>()V

    .line 214
    invoke-static {p0, v3}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v3

    .line 215
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v3

    .line 216
    invoke-virtual {v3, v2}, Lcom/android/internal/graphics/palette/Palette$Builder;->resizeBitmapArea(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v2

    .local v2, "palette":Lcom/android/internal/graphics/palette/Palette;
    goto :goto_73

    .line 220
    .end local v2    # "palette":Lcom/android/internal/graphics/palette/Palette;
    :cond_4f
    const/4 v3, 0x5

    .line 221
    .local v3, "minClusters":I
    const/16 v4, 0x80

    .line 224
    .local v4, "maxClusters":I
    const/16 v5, 0x10

    .line 225
    .local v5, "minPixelsPerCluster":I
    div-int v6, v0, v5

    .line 226
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 225
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 227
    .local v6, "numberOfColors":I
    new-instance v7, Lcom/android/internal/graphics/palette/CelebiQuantizer;

    invoke-direct {v7}, Lcom/android/internal/graphics/palette/CelebiQuantizer;-><init>()V

    .line 228
    invoke-static {p0, v7}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v7

    .line 229
    invoke-virtual {v7, v6}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v7

    .line 230
    invoke-virtual {v7, v2}, Lcom/android/internal/graphics/palette/Palette$Builder;->resizeBitmapArea(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v2

    .line 234
    .end local v3    # "minClusters":I
    .end local v4    # "maxClusters":I
    .end local v5    # "minPixelsPerCluster":I
    .end local v6    # "numberOfColors":I
    .restart local v2    # "palette":Lcom/android/internal/graphics/palette/Palette;
    :goto_73
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    .local v3, "swatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    new-instance v4, Landroid/app/WallpaperColors$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/app/WallpaperColors$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 237
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 239
    .local v4, "swatchesSize":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v5, "populationByColor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8e
    if-ge v6, v4, :cond_ac

    .line 241
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 242
    .local v7, "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    invoke-virtual {v7}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getInt()I

    move-result v8

    .line 243
    .local v8, "colorInt":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .end local v7    # "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    .end local v8    # "colorInt":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_8e

    .line 247
    .end local v6    # "i":I
    :cond_ac
    invoke-static {p0, p1}, Landroid/app/WallpaperColors;->calculateDarkHints(Landroid/graphics/Bitmap;F)I

    move-result v6

    .line 249
    .local v6, "hints":I
    if-eqz v1, :cond_b5

    .line 250
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    :cond_b5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 254
    new-instance v7, Landroid/app/WallpaperColors;

    or-int/lit8 v8, v6, 0x4

    invoke-direct {v7, v5, v8}, Landroid/app/WallpaperColors;-><init>(Ljava/util/Map;I)V

    return-object v7
.end method

.method public static whitelist fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;
    .registers 10
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 144
    if-eqz p0, :cond_4f

    .line 148
    const-string v0, "WallpaperColors#fromDrawable"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 150
    .local v0, "initialBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 151
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 154
    .local v2, "height":I
    if-lez v1, :cond_17

    if-gtz v2, :cond_1b

    .line 155
    :cond_17
    const/16 v1, 0x70

    .line 156
    const/16 v2, 0x70

    .line 159
    :cond_1b
    invoke-static {v1, v2}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    move-result-object v3

    .line 160
    .local v3, "optimalSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 162
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    .local v5, "bmpCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    invoke-virtual {p0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    invoke-static {v4}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v6

    .line 167
    .local v6, "colors":Landroid/app/WallpaperColors;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 170
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 171
    return-object v6

    .line 145
    .end local v0    # "initialBounds":Landroid/graphics/Rect;
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "optimalSize":Landroid/util/Size;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bmpCanvas":Landroid/graphics/Canvas;
    .end local v6    # "colors":Landroid/app/WallpaperColors;
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist hueDiff(Lcom/android/internal/graphics/cam/Cam;Lcom/android/internal/graphics/cam/Cam;)D
    .registers 4
    .param p0, "a"    # Lcom/android/internal/graphics/cam/Cam;
    .param p1, "b"    # Lcom/android/internal/graphics/cam/Cam;

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v1, v0

    float-to-double v0, v1

    return-wide v0
.end method

.method private static blacklist hueProportions(Ljava/util/Map;Ljava/util/Map;)[D
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/graphics/cam/Cam;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)[D"
        }
    .end annotation

    .line 408
    .local p0, "colorToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/graphics/cam/Cam;>;"
    .local p1, "colorToPopulation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v0, 0x168

    new-array v0, v0, [D

    .line 410
    .local v0, "proportions":[D
    const-wide/16 v1, 0x0

    .line 411
    .local v1, "totalPopulation":D
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 412
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v1, v5

    .line 413
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_e

    .line 415
    :cond_27
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 416
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 417
    .local v5, "color":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 418
    .local v6, "population":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/graphics/cam/Cam;

    .line 419
    .local v7, "cam":Lcom/android/internal/graphics/cam/Cam;
    invoke-virtual {v7}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v8}, Landroid/app/WallpaperColors;->wrapDegrees(I)I

    move-result v8

    .line 420
    .local v8, "hue":I
    aget-wide v9, v0, v8

    int-to-double v11, v6

    div-double/2addr v11, v1

    add-double/2addr v9, v11

    aput-wide v9, v0, v8

    .line 421
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "color":I
    .end local v6    # "population":I
    .end local v7    # "cam":Lcom/android/internal/graphics/cam/Cam;
    .end local v8    # "hue":I
    goto :goto_2f

    .line 423
    :cond_71
    return-object v0
.end method

.method static synthetic blacklist lambda$fromBitmap$0(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I
    .registers 4
    .param p0, "a"    # Lcom/android/internal/graphics/palette/Palette$Swatch;
    .param p1, "b"    # Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 235
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$new$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4
    .param p0, "a"    # Ljava/util/Map$Entry;
    .param p1, "b"    # Ljava/util/Map$Entry;

    .line 347
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method private static blacklist score(Lcom/android/internal/graphics/cam/Cam;D)D
    .registers 7
    .param p0, "cam"    # Lcom/android/internal/graphics/cam/Cam;
    .param p1, "proportion"    # D

    .line 379
    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist wrapDegrees(I)I
    .registers 3
    .param p0, "degrees"    # I

    .line 397
    const/16 v0, 0x168

    if-gez p0, :cond_8

    .line 398
    rem-int/lit16 v1, p0, 0x168

    add-int/2addr v1, v0

    return v1

    .line 399
    :cond_8
    if-lt p0, v0, :cond_d

    .line 400
    rem-int/lit16 v0, p0, 0x168

    return v0

    .line 402
    :cond_d
    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 517
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_2f

    .line 521
    :cond_e
    move-object v1, p1

    check-cast v1, Landroid/app/WallpaperColors;

    .line 522
    .local v1, "other":Landroid/app/WallpaperColors;
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    iget-object v3, v1, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    iget-object v3, v1, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    .line 523
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget v2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    iget v3, v1, Landroid/app/WallpaperColors;->mColorHints:I

    if-ne v2, v3, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    nop

    .line 522
    :goto_2e
    return v0

    .line 518
    .end local v1    # "other":Landroid/app/WallpaperColors;
    :cond_2f
    :goto_2f
    return v0
.end method

.method public blacklist getAllColors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColorHints()I
    .registers 2

    .line 537
    iget v0, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return v0
.end method

.method public greylist-max-o getMainColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrimaryColor()Landroid/graphics/Color;
    .registers 3

    .line 473
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    return-object v0
.end method

.method public whitelist getSecondaryColor()Landroid/graphics/Color;
    .registers 3

    .line 482
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    const/4 v0, 0x0

    goto :goto_14

    :cond_b
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    :goto_14
    return-object v0
.end method

.method public whitelist getTertiaryColor()Landroid/graphics/Color;
    .registers 3

    .line 491
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_b

    const/4 v0, 0x0

    goto :goto_14

    :cond_b
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    :goto_14
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 529
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .local v0, "colors":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 645
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Color;

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 647
    .end local v1    # "i":I
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WallpaperColors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 445
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v0

    .line 446
    .local v0, "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 447
    .local v1, "count":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1e

    .line 449
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Color;

    .line 450
    .local v3, "color":Landroid/graphics/Color;
    invoke-virtual {v3}, Landroid/graphics/Color;->toArgb()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    .end local v3    # "color":Landroid/graphics/Color;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 452
    .end local v2    # "i":I
    :cond_1e
    iget-object v2, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    .line 453
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object v2, p0, Landroid/app/WallpaperColors;->mAllColors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 455
    .local v3, "colorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_61

    .line 456
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 458
    .local v4, "population":Ljava/lang/Integer;
    if-eqz v4, :cond_5d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5e

    :cond_5d
    const/4 v5, 0x0

    .line 459
    .local v5, "populationInt":I
    :goto_5e
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    .end local v3    # "colorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "population":Ljava/lang/Integer;
    .end local v5    # "populationInt":I
    :cond_61
    goto :goto_31

    .line 462
    :cond_62
    iget v2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    return-void
.end method
