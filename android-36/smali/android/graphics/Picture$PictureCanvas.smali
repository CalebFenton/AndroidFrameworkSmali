.class Landroid/graphics/Picture$PictureCanvas;
.super Landroid/graphics/Canvas;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureCanvas"
.end annotation


# instance fields
.field private final greylist-max-o mPicture:Landroid/graphics/Picture;

.field blacklist mUsesHwFeature:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/Picture;J)V
    .registers 5
    .param p1, "pict"    # Landroid/graphics/Picture;
    .param p2, "nativeCanvas"    # J

    .line 251
    invoke-direct {p0, p2, p3}, Landroid/graphics/Canvas;-><init>(J)V

    .line 252
    iput-object p1, p0, Landroid/graphics/Picture$PictureCanvas;->mPicture:Landroid/graphics/Picture;

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Picture$PictureCanvas;->mDensity:I

    .line 255
    return-void
.end method


# virtual methods
.method public whitelist drawPicture(Landroid/graphics/Picture;)V
    .registers 4
    .param p1, "picture"    # Landroid/graphics/Picture;

    .line 264
    iget-object v0, p0, Landroid/graphics/Picture$PictureCanvas;->mPicture:Landroid/graphics/Picture;

    if-eq v0, p1, :cond_8

    .line 267
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 268
    return-void

    .line 265
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot draw a picture into its recording canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist onHwFeatureInSwMode()Z
    .registers 2

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Picture$PictureCanvas;->mUsesHwFeature:Z

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot call setBitmap on a picture canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
