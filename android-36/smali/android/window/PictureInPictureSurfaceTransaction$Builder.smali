.class public Landroid/window/PictureInPictureSurfaceTransaction$Builder;
.super Ljava/lang/Object;
.source "PictureInPictureSurfaceTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/PictureInPictureSurfaceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlpha:F

.field private blacklist mCornerRadius:F

.field private blacklist mFloat9:[F

.field private blacklist mPosition:Landroid/graphics/PointF;

.field private blacklist mRotation:F

.field private blacklist mShadowRadius:F

.field private blacklist mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mAlpha:F

    .line 215
    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mCornerRadius:F

    .line 216
    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mShadowRadius:F

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/PictureInPictureSurfaceTransaction;
    .registers 10

    .line 251
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction;

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mAlpha:F

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mPosition:Landroid/graphics/PointF;

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mFloat9:[F

    iget v4, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mRotation:F

    iget v5, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mCornerRadius:F

    iget v6, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mShadowRadius:F

    iget-object v7, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mWindowCrop:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;Landroid/window/PictureInPictureSurfaceTransaction-IA;)V

    return-object v0
.end method

.method public blacklist setAlpha(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 2
    .param p1, "alpha"    # F

    .line 220
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mAlpha:F

    .line 221
    return-object p0
.end method

.method public blacklist setCornerRadius(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 2
    .param p1, "cornerRadius"    # F

    .line 236
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mCornerRadius:F

    .line 237
    return-object p0
.end method

.method public blacklist setPosition(FF)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 225
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mPosition:Landroid/graphics/PointF;

    .line 226
    return-object p0
.end method

.method public blacklist setShadowRadius(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 2
    .param p1, "shadowRadius"    # F

    .line 241
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mShadowRadius:F

    .line 242
    return-object p0
.end method

.method public blacklist setTransform([FF)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 4
    .param p1, "float9"    # [F
    .param p2, "rotation"    # F

    .line 230
    const/16 v0, 0x9

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mFloat9:[F

    .line 231
    iput p2, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mRotation:F

    .line 232
    return-object p0
.end method

.method public blacklist setWindowCrop(Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 3
    .param p1, "windowCrop"    # Landroid/graphics/Rect;

    .line 246
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mWindowCrop:Landroid/graphics/Rect;

    .line 247
    return-object p0
.end method
