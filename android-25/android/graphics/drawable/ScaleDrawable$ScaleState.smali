.class final Landroid/graphics/drawable/ScaleDrawable$ScaleState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "ScaleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ScaleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScaleState"
.end annotation


# static fields
.field private static final DO_NOT_SCALE:F = -1.0f


# instance fields
.field mGravity:I

.field mInitialLevel:I

.field mScaleHeight:F

.field mScaleWidth:F

.field private mThemeAttrs:[I

.field mUseIntrinsicSizeAsMin:Z


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;[I)[I
    .locals 0

    #@0
    iput-object p1, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/high16 v0, -0x40800000    # -1.0f

    #@3
    .line 266
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    #@6
    .line 259
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@8
    .line 260
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@a
    .line 261
    const/4 v0, 0x3

    #@b
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@d
    .line 262
    iput-boolean v1, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@f
    .line 263
    iput v1, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    #@11
    .line 268
    if-eqz p1, :cond_0

    #@13
    .line 269
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@15
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@17
    .line 270
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@19
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@1b
    .line 271
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@1d
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@1f
    .line 272
    iget-boolean v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@21
    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@23
    .line 273
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    #@25
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    #@27
    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 279
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable;)V

    #@6
    return-object v0
.end method
