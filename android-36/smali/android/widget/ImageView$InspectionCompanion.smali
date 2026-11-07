.class public final Landroid/widget/ImageView$InspectionCompanion;
.super Ljava/lang/Object;
.source "ImageView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAdjustViewBoundsId:I

.field private blacklist mBaselineAlignBottomId:I

.field private blacklist mBaselineId:I

.field private blacklist mBlendModeId:I

.field private blacklist mCropToPaddingId:I

.field private blacklist mMaxHeightId:I

.field private blacklist mMaxWidthId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mScaleTypeId:I

.field private blacklist mSrcId:I

.field private blacklist mTintId:I

.field private blacklist mTintModeId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 78
    const-string v0, "adjustViewBounds"

    const v1, 0x101011e

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mAdjustViewBoundsId:I

    .line 79
    const-string v0, "baseline"

    const v1, 0x101031c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBaselineId:I

    .line 80
    const-string v0, "baselineAlignBottom"

    const v1, 0x1010122

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBaselineAlignBottomId:I

    .line 81
    const-string v0, "blendMode"

    const/16 v1, 0x9

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBlendModeId:I

    .line 82
    const-string v0, "cropToPadding"

    const v1, 0x1010123

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mCropToPaddingId:I

    .line 83
    const-string v0, "maxHeight"

    const v1, 0x1010120

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mMaxHeightId:I

    .line 84
    const-string v0, "maxWidth"

    const v1, 0x101011f

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mMaxWidthId:I

    .line 85
    const-string/jumbo v0, "scaleType"

    const v1, 0x101011d

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mScaleTypeId:I

    .line 86
    const-string/jumbo v0, "src"

    const v1, 0x1010119

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mSrcId:I

    .line 87
    const-string/jumbo v0, "tint"

    const v1, 0x1010121

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mTintId:I

    .line 88
    const-string/jumbo v0, "tintMode"

    const v1, 0x10103fb

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mTintModeId:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mPropertiesMapped:Z

    .line 90
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/ImageView;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/ImageView;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 94
    iget-boolean v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_68

    .line 97
    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mAdjustViewBoundsId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAdjustViewBounds()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 98
    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBaselineId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBaseline()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 99
    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBaselineAlignBottomId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBaselineAlignBottom()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 100
    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 101
    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mCropToPaddingId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getCropToPadding()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 102
    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mMaxHeightId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 103
    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mMaxWidthId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 104
    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mScaleTypeId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 105
    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mSrcId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 106
    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mTintId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 107
    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mTintModeId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 108
    return-void

    .line 95
    :cond_68
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 15
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView$InspectionCompanion;->readProperties(Landroid/widget/ImageView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
