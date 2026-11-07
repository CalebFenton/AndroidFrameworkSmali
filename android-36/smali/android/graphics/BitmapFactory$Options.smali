.class public Landroid/graphics/BitmapFactory$Options;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public whitelist inBitmap:Landroid/graphics/Bitmap;

.field public whitelist inDensity:I

.field public whitelist inDither:Z

.field public whitelist inInputShareable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist inJustDecodeBounds:Z

.field public whitelist inMutable:Z

.field public whitelist inPreferQualityOverSpeed:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist inPreferredColorSpace:Landroid/graphics/ColorSpace;

.field public whitelist inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field public whitelist inPremultiplied:Z

.field public whitelist inPurgeable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist inSampleSize:I

.field public whitelist inScaled:Z

.field public whitelist inScreenDensity:I

.field public whitelist inTargetDensity:I

.field public whitelist inTempStorage:[B

.field public whitelist mCancel:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist outColorSpace:Landroid/graphics/ColorSpace;

.field public whitelist outConfig:Landroid/graphics/Bitmap$Config;

.field public whitelist outHeight:I

.field public whitelist outMimeType:Ljava/lang/String;

.field public whitelist outWidth:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 55
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 56
    return-void
.end method

.method static blacklist nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J
    .registers 3
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 502
    if-eqz p0, :cond_e

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    if-nez v0, :cond_7

    goto :goto_e

    .line 506
    :cond_7
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v0

    return-wide v0

    .line 503
    :cond_e
    :goto_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static blacklist nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J
    .registers 3
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 486
    if-eqz p0, :cond_14

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    goto :goto_14

    .line 491
    :cond_7
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 492
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    return-wide v0

    .line 487
    :cond_14
    :goto_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static greylist-max-o validate(Landroid/graphics/BitmapFactory$Options;)V
    .registers 3
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 448
    if-nez p0, :cond_3

    return-void

    .line 450
    :cond_3
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2a

    .line 451
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_22

    .line 455
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_2a

    .line 456
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot reuse a recycled Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmaps with Config.HARDWARE are always immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_2a
    :goto_2a
    iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_35

    goto :goto_3d

    .line 462
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmaps with Config.HARDWARE cannot be decoded into - they are immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_3d
    :goto_3d
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_7e

    .line 467
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    instance-of v0, v0, Landroid/graphics/ColorSpace$Rgb;

    if-eqz v0, :cond_76

    .line 471
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    .line 473
    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    .line 475
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v0

    if-eqz v0, :cond_6e

    goto :goto_7e

    .line 476
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The destination color space must use an ICC parametric transfer function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The destination color space must use the RGB color model"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_7e
    :goto_7e
    return-void
.end method


# virtual methods
.method public whitelist requestCancelDecode()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 445
    return-void
.end method
