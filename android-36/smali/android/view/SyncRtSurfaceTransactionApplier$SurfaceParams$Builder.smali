.class public Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field blacklist alpha:F

.field blacklist backgroundBlurRadius:I

.field blacklist cornerRadius:F

.field blacklist flags:I

.field blacklist layer:I

.field blacklist matrix:Landroid/graphics/Matrix;

.field blacklist mergeTransaction:Landroid/view/SurfaceControl$Transaction;

.field blacklist opaque:Z

.field final blacklist surface:Landroid/view/SurfaceControl;

.field blacklist visible:Z

.field blacklist windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    .line 197
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .registers 14

    .line 313
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    iget-object v1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    iget v3, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->alpha:F

    iget-object v4, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    iget v6, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->layer:I

    iget v7, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->cornerRadius:F

    iget v8, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurRadius:I

    iget-boolean v9, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->visible:Z

    iget-object v10, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-boolean v11, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->opaque:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;-><init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;IFIZLandroid/view/SurfaceControl$Transaction;ZLandroid/view/SyncRtSurfaceTransactionApplier-IA;)V

    return-object v0
.end method

.method public blacklist withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3
    .param p1, "alpha"    # F

    .line 204
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->alpha:F

    .line 205
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 206
    return-object p0
.end method

.method public blacklist withBackgroundBlur(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3
    .param p1, "radius"    # I

    .line 254
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurRadius:I

    .line 255
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 256
    return-object p0
.end method

.method public blacklist withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3
    .param p1, "radius"    # F

    .line 244
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->cornerRadius:F

    .line 245
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 246
    return-object p0
.end method

.method public blacklist withEarlyWakeupEnd()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 295
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 296
    return-object p0
.end method

.method public blacklist withEarlyWakeupStart()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 286
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 287
    return-object p0
.end method

.method public blacklist withLayer(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3
    .param p1, "layer"    # I

    .line 234
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->layer:I

    .line 235
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 236
    return-object p0
.end method

.method public blacklist withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 214
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    .line 215
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 216
    return-object p0
.end method

.method public blacklist withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3
    .param p1, "mergeTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 275
    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 276
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 277
    return-object p0
.end method

.method public blacklist withOpaque(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3
    .param p1, "opaque"    # Z

    .line 304
    iput-boolean p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->opaque:Z

    .line 305
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 306
    return-object p0
.end method

.method public blacklist withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3
    .param p1, "visible"    # Z

    .line 264
    iput-boolean p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->visible:Z

    .line 265
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 266
    return-object p0
.end method

.method public blacklist withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3
    .param p1, "windowCrop"    # Landroid/graphics/Rect;

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    .line 225
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 226
    return-object p0
.end method
