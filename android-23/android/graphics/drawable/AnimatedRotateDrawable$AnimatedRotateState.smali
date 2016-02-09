.class final Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "AnimatedRotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedRotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimatedRotateState"
.end annotation


# instance fields
.field mFrameDuration:I

.field mFramesCount:I

.field mPivotX:F

.field mPivotXRel:Z

.field mPivotY:F

.field mPivotYRel:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 223
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)V

    #@5
    .line 215
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    #@7
    .line 216
    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    #@9
    .line 217
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    #@b
    .line 218
    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    #@d
    .line 219
    const/16 v0, 0x96

    #@f
    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    #@11
    .line 220
    const/16 v0, 0xc

    #@13
    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    #@15
    .line 225
    if-eqz p1, :cond_0

    #@17
    .line 226
    iget-boolean v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    #@19
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    #@1b
    .line 227
    iget v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    #@1d
    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    #@1f
    .line 228
    iget-boolean v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    #@21
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    #@23
    .line 229
    iget v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    #@25
    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    #@27
    .line 230
    iget v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    #@29
    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    #@2b
    .line 231
    iget v0, p1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    #@2d
    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    #@2f
    .line 222
    :cond_0
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 237
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedRotateDrawable;)V

    #@6
    return-object v0
.end method
