.class public Lcom/android/internal/widget/LocalImageResolver;
.super Ljava/lang/Object;
.source "LocalImageResolver.java"


# static fields
.field static final blacklist DEFAULT_MAX_SAFE_ICON_SIZE_PX:I = 0x1e0

.field public static final blacklist NO_MAX_SIZE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "LocalImageResolver"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getPowerOfTwoForSampleRatio(D)I
    .registers 4
    .param p0, "ratio"    # D

    .line 248
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 249
    .local v0, "k":I
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private static blacklist getResolvableUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;
    .registers 3
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;

    .line 268
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    .line 269
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    goto :goto_16

    .line 272
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 270
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$resolveImage$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 4
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "s"    # Landroid/graphics/ImageDecoder$Source;

    .line 62
    const/16 v0, 0x1e0

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/widget/LocalImageResolver;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;II)V

    return-void
.end method

.method static synthetic blacklist lambda$resolveImage$1(IILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 8
    .param p0, "maxWidth"    # I
    .param p1, "maxHeight"    # I
    .param p2, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p3, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p4, "unused"    # Landroid/graphics/ImageDecoder$Source;

    .line 216
    if-lez p0, :cond_48

    if-gtz p1, :cond_5

    goto :goto_48

    .line 220
    :cond_5
    invoke-virtual {p3}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 221
    .local v0, "size":Landroid/util/Size;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-gt v1, p0, :cond_16

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-gt v1, p1, :cond_16

    .line 223
    return-void

    .line 226
    :cond_16
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_34

    .line 227
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-le v1, p0, :cond_47

    .line 228
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v1, p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 229
    .local v1, "targetHeight":I
    invoke-virtual {p2, p0, v1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 230
    .end local v1    # "targetHeight":I
    goto :goto_47

    .line 232
    :cond_34
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v1, p1, :cond_47

    .line 233
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    .line 234
    .local v1, "targetWidth":I
    invoke-virtual {p2, v1, p1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 237
    .end local v1    # "targetWidth":I
    :cond_47
    :goto_47
    return-void

    .line 217
    .end local v0    # "size":Landroid/util/Size;
    :cond_48
    :goto_48
    return-void
.end method

.method private static blacklist onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;II)V
    .registers 10
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 254
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 255
    .local v0, "size":Landroid/util/Size;
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 256
    .local v1, "originalSize":I
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 257
    .local v2, "maxSize":I
    if-le v1, v2, :cond_1e

    .line 258
    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v4, v2

    div-float/2addr v3, v4

    float-to-double v3, v3

    goto :goto_20

    .line 259
    :cond_1e
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :goto_20
    nop

    .line 260
    .local v3, "ratio":D
    invoke-static {v3, v4}, Lcom/android/internal/widget/LocalImageResolver;->getPowerOfTwoForSampleRatio(D)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 261
    return-void
.end method

.method private static blacklist resolveBitmapImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 178
    if-lez p2, :cond_40

    if-lez p3, :cond_40

    .line 179
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_c

    .line 181
    const/4 v1, 0x0

    return-object v1

    .line 184
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p2, :cond_18

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p3, :cond_40

    .line 185
    :cond_18
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_24

    .line 186
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_28

    :cond_24
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 188
    .local v1, "smallerIcon":Landroid/graphics/drawable/Icon;
    :goto_28
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 189
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->setTintBlendMode(Landroid/graphics/BlendMode;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 190
    invoke-virtual {v2, p2, p3}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 191
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 195
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "smallerIcon":Landroid/graphics/drawable/Icon;
    :cond_40
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist resolveImage(ILandroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "resId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 164
    .local v0, "source":Landroid/graphics/ImageDecoder$Source;
    invoke-static {v0, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist resolveImage(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 170
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 171
    .local v0, "source":Landroid/graphics/ImageDecoder$Source;
    invoke-static {v0, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "source"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 215
    :try_start_0
    new-instance v0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 241
    :catch_a
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LocalImageResolver"

    const-string v2, "Couldn\'t use ImageDecoder for drawable, falling back to non-resized load."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const/16 v0, 0x1e0

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 98
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 99
    return-object v0

    .line 102
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_5e

    :pswitch_b
    goto :goto_3d

    .line 105
    :pswitch_c
    invoke-static {p0}, Lcom/android/internal/widget/LocalImageResolver;->getResolvableUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;

    move-result-object v1

    .line 106
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_3d

    .line 107
    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 108
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1d

    .line 109
    invoke-static {p0, v2}, Lcom/android/internal/widget/LocalImageResolver;->tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 111
    .end local v2    # "result":Landroid/graphics/drawable/Drawable;
    :cond_1d
    goto :goto_3d

    .line 114
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_1e
    invoke-static {p1, p0}, Lcom/android/internal/widget/LocalImageResolver;->resolveResourcesForIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, "res":Landroid/content/res/Resources;
    if-nez v1, :cond_29

    .line 117
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 120
    :cond_29
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-static {v1, v2, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 121
    .restart local v2    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3d

    .line 122
    invoke-static {p0, v2}, Lcom/android/internal/widget/LocalImageResolver;->tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 127
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "result":Landroid/graphics/drawable/Drawable;
    :pswitch_38
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveBitmapImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 135
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 136
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_5b

    .line 137
    const-string v2, "LocalImageResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load drawable for icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_5b} :catch_5c

    .line 139
    :cond_5b
    return-object v1

    .line 140
    .end local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :catch_5c
    move-exception v1

    .line 141
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    return-object v0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_1e
        :pswitch_b
        :pswitch_c
        :pswitch_38
        :pswitch_c
    .end packed-switch
.end method

.method public static blacklist resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    nop

    .line 60
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 61
    .local v0, "source":Landroid/graphics/ImageDecoder$Source;
    new-instance v1, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    return-object v1

    .line 64
    .end local v0    # "source":Landroid/graphics/ImageDecoder$Source;
    :catch_13
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 150
    nop

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 152
    .local v0, "source":Landroid/graphics/ImageDecoder$Source;
    invoke-static {v0, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist resolveResourcesForIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/content/res/Resources;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 287
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    .line 288
    return-object v2

    .line 292
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 293
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_10

    .line 294
    return-object v0

    .line 297
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "resPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_56

    .line 303
    :cond_25
    const-string v3, "android"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 304
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    return-object v2

    .line 307
    :cond_32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 309
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x2400

    :try_start_38
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 312
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_43

    .line 313
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_42} :catch_45

    return-object v2

    .line 318
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_43
    nop

    .line 320
    return-object v2

    .line 315
    :catch_45
    move-exception v4

    .line 316
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Unable to resolve package %s for icon %s"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "LocalImageResolver"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-object v2

    .line 300
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_56
    :goto_56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 200
    if-nez p1, :cond_4

    .line 201
    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->hasTint()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 205
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 206
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 207
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 210
    :cond_1b
    return-object p1
.end method
