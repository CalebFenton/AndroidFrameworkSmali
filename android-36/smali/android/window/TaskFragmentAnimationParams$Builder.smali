.class public final Landroid/window/TaskFragmentAnimationParams$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentAnimationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentAnimationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAnimationBackgroundColor:I

.field private blacklist mChangeAnimationResId:I

.field private blacklist mCloseAnimationResId:I

.field private blacklist mOpenAnimationResId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mAnimationBackgroundColor:I

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mOpenAnimationResId:I

    .line 192
    iput v0, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mChangeAnimationResId:I

    .line 195
    iput v0, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mCloseAnimationResId:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskFragmentAnimationParams;
    .registers 7

    .line 255
    new-instance v0, Landroid/window/TaskFragmentAnimationParams;

    iget v1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mAnimationBackgroundColor:I

    iget v2, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mOpenAnimationResId:I

    iget v3, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mChangeAnimationResId:I

    iget v4, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mCloseAnimationResId:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/window/TaskFragmentAnimationParams;-><init>(IIIILandroid/window/TaskFragmentAnimationParams-IA;)V

    return-object v0
.end method

.method public blacklist setAnimationBackgroundColor(I)Landroid/window/TaskFragmentAnimationParams$Builder;
    .registers 2
    .param p1, "color"    # I

    .line 209
    iput p1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mAnimationBackgroundColor:I

    .line 210
    return-object p0
.end method

.method public blacklist setChangeAnimationResId(I)Landroid/window/TaskFragmentAnimationParams$Builder;
    .registers 2
    .param p1, "resId"    # I

    .line 235
    iput p1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mChangeAnimationResId:I

    .line 236
    return-object p0
.end method

.method public blacklist setCloseAnimationResId(I)Landroid/window/TaskFragmentAnimationParams$Builder;
    .registers 2
    .param p1, "resId"    # I

    .line 248
    iput p1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mCloseAnimationResId:I

    .line 249
    return-object p0
.end method

.method public blacklist setOpenAnimationResId(I)Landroid/window/TaskFragmentAnimationParams$Builder;
    .registers 2
    .param p1, "resId"    # I

    .line 222
    iput p1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mOpenAnimationResId:I

    .line 223
    return-object p0
.end method
