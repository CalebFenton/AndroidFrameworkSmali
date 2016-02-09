.class final Landroid/graphics/drawable/RotateDrawable$RotateState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RotateState"
.end annotation


# instance fields
.field mCurrentDegrees:F

.field mFromDegrees:F

.field mPivotX:F

.field mPivotXRel:Z

.field mPivotY:F

.field mPivotYRel:Z

.field mToDegrees:F


# direct methods
.method constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;)V
    .locals 3
    .param p1, "orig"    # Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/high16 v0, 0x3f000000    # 0.5f

    #@3
    const/4 v1, 0x0

    #@4
    .line 333
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)V

    #@7
    .line 324
    iput-boolean v2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@9
    .line 325
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@b
    .line 326
    iput-boolean v2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@d
    .line 327
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@f
    .line 328
    iput v1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@11
    .line 329
    const/high16 v0, 0x43b40000    # 360.0f

    #@13
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@15
    .line 330
    iput v1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    #@17
    .line 335
    if-eqz p1, :cond_0

    #@19
    .line 336
    iget-boolean v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@1b
    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@1d
    .line 337
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@1f
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@21
    .line 338
    iget-boolean v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@23
    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@25
    .line 339
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@27
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@29
    .line 340
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@2b
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@2d
    .line 341
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@2f
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@31
    .line 342
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    #@33
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    #@35
    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 348
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable;)V

    #@6
    return-object v0
.end method
