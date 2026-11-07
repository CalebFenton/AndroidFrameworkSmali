.class public final Landroid/widget/ProgressBar$InspectionCompanion;
.super Ljava/lang/Object;
.source "ProgressBar$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/ProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mIndeterminateDrawableId:I

.field private blacklist mIndeterminateId:I

.field private blacklist mIndeterminateTintBlendModeId:I

.field private blacklist mIndeterminateTintId:I

.field private blacklist mIndeterminateTintModeId:I

.field private blacklist mInterpolatorId:I

.field private blacklist mMaxId:I

.field private blacklist mMinId:I

.field private blacklist mMirrorForRtlId:I

.field private blacklist mProgressBackgroundTintBlendModeId:I

.field private blacklist mProgressBackgroundTintId:I

.field private blacklist mProgressBackgroundTintModeId:I

.field private blacklist mProgressDrawableId:I

.field private blacklist mProgressId:I

.field private blacklist mProgressTintBlendModeId:I

.field private blacklist mProgressTintId:I

.field private blacklist mProgressTintModeId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mSecondaryProgressId:I

.field private blacklist mSecondaryProgressTintBlendModeId:I

.field private blacklist mSecondaryProgressTintId:I

.field private blacklist mSecondaryProgressTintModeId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 128
    const-string v0, "indeterminate"

    const v1, 0x1010139

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateId:I

    .line 129
    const-string v0, "indeterminateDrawable"

    const v1, 0x101013b

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateDrawableId:I

    .line 130
    const-string v0, "indeterminateTint"

    const v1, 0x1010469

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintId:I

    .line 131
    const-string v0, "indeterminateTintBlendMode"

    const/16 v1, 0x17

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintBlendModeId:I

    .line 132
    const-string v0, "indeterminateTintMode"

    const v1, 0x101046a

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintModeId:I

    .line 133
    const-string v0, "interpolator"

    const v1, 0x1010141

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mInterpolatorId:I

    .line 134
    const-string v0, "max"

    const v1, 0x1010136

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMaxId:I

    .line 135
    const-string v0, "min"

    const v1, 0x1010539

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMinId:I

    .line 136
    const-string v0, "mirrorForRtl"

    const v1, 0x10103ce

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMirrorForRtlId:I

    .line 137
    const-string v0, "progress"

    const v1, 0x1010137

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressId:I

    .line 138
    const-string v0, "progressBackgroundTint"

    const v1, 0x1010465

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintId:I

    .line 139
    const-string v0, "progressBackgroundTintBlendMode"

    const/16 v1, 0x13

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintBlendModeId:I

    .line 140
    const-string v0, "progressBackgroundTintMode"

    const v1, 0x1010466

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintModeId:I

    .line 141
    const-string v0, "progressDrawable"

    const v1, 0x101013c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressDrawableId:I

    .line 142
    const-string v0, "progressTint"

    const v1, 0x1010463

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintId:I

    .line 143
    const-string v0, "progressTintBlendMode"

    const/16 v1, 0x11

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintBlendModeId:I

    .line 144
    const-string v0, "progressTintMode"

    const v1, 0x1010464

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintModeId:I

    .line 145
    const-string/jumbo v0, "secondaryProgress"

    const v1, 0x1010138

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressId:I

    .line 146
    const-string/jumbo v0, "secondaryProgressTint"

    const v1, 0x1010467

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintId:I

    .line 147
    const-string/jumbo v0, "secondaryProgressTintBlendMode"

    const/16 v1, 0x15

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintBlendModeId:I

    .line 148
    const-string/jumbo v0, "secondaryProgressTintMode"

    const v1, 0x1010468

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintModeId:I

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mPropertiesMapped:Z

    .line 150
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/ProgressBar;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/ProgressBar;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 154
    iget-boolean v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_c2

    .line 157
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 158
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateDrawableId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 159
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 160
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 161
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 162
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mInterpolatorId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 163
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMaxId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 164
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMinId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMin()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 165
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMirrorForRtlId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMirrorForRtl()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 166
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 167
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 168
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressBackgroundTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 169
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 170
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressDrawableId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 171
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 172
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 173
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 174
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 175
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getSecondaryProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 176
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getSecondaryProgressTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 177
    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 178
    return-void

    .line 155
    :cond_c2
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
    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar$InspectionCompanion;->readProperties(Landroid/widget/ProgressBar;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
