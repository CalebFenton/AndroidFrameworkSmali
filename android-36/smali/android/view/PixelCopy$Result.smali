.class public final Landroid/view/PixelCopy$Result;
.super Ljava/lang/Object;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PixelCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mStatus:I


# direct methods
.method private constructor blacklist <init>(ILandroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput p1, p0, Landroid/view/PixelCopy$Result;->mStatus:I

    .line 321
    iput-object p2, p0, Landroid/view/PixelCopy$Result;->mBitmap:Landroid/graphics/Bitmap;

    .line 322
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/graphics/Bitmap;Landroid/view/PixelCopy-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/PixelCopy$Result;-><init>(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private blacklist validateStatus()V
    .registers 4

    .line 332
    iget v0, p0, Landroid/view/PixelCopy$Result;->mStatus:I

    if-nez v0, :cond_5

    .line 335
    return-void

    .line 333
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copy request didn\'t succeed, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/PixelCopy$Result;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 347
    invoke-direct {p0}, Landroid/view/PixelCopy$Result;->validateStatus()V

    .line 348
    iget-object v0, p0, Landroid/view/PixelCopy$Result;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 328
    iget v0, p0, Landroid/view/PixelCopy$Result;->mStatus:I

    return v0
.end method
