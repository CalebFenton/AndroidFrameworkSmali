.class public final Landroid/widget/Switch$InspectionCompanion;
.super Ljava/lang/Object;
.source "Switch$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/Switch;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mPropertiesMapped:Z

.field private blacklist mShowTextId:I

.field private blacklist mSplitTrackId:I

.field private blacklist mSwitchMinWidthId:I

.field private blacklist mSwitchPaddingId:I

.field private blacklist mTextOffId:I

.field private blacklist mTextOnId:I

.field private blacklist mThumbId:I

.field private blacklist mThumbTextPaddingId:I

.field private blacklist mThumbTintBlendModeId:I

.field private blacklist mThumbTintId:I

.field private blacklist mThumbTintModeId:I

.field private blacklist mTrackId:I

.field private blacklist mTrackTintBlendModeId:I

.field private blacklist mTrackTintId:I

.field private blacklist mTrackTintModeId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Switch$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 98
    const-string/jumbo v0, "showText"

    const v1, 0x10104ad

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mShowTextId:I

    .line 99
    const-string/jumbo v0, "splitTrack"

    const v1, 0x101044c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSplitTrackId:I

    .line 100
    const-string/jumbo v0, "switchMinWidth"

    const v1, 0x1010370

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSwitchMinWidthId:I

    .line 101
    const-string/jumbo v0, "switchPadding"

    const v1, 0x1010371

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSwitchPaddingId:I

    .line 102
    const-string/jumbo v0, "textOff"

    const v1, 0x1010125

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTextOffId:I

    .line 103
    const-string/jumbo v0, "textOn"

    const v1, 0x1010124

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTextOnId:I

    .line 104
    const-string/jumbo v0, "thumb"

    const v1, 0x1010142

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbId:I

    .line 105
    const-string/jumbo v0, "thumbTextPadding"

    const v1, 0x1010372

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTextPaddingId:I

    .line 106
    const-string/jumbo v0, "thumbTint"

    const v1, 0x1010471

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintId:I

    .line 107
    const-string/jumbo v0, "thumbTintBlendMode"

    const/16 v1, 0xa

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintBlendModeId:I

    .line 108
    const-string/jumbo v0, "thumbTintMode"

    const v1, 0x1010472

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintModeId:I

    .line 109
    const-string/jumbo v0, "track"

    const v1, 0x101036f

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackId:I

    .line 110
    const-string/jumbo v0, "trackTint"

    const v1, 0x10104d9

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintId:I

    .line 111
    const-string/jumbo v0, "trackTintBlendMode"

    const/16 v1, 0xd

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintBlendModeId:I

    .line 112
    const-string/jumbo v0, "trackTintMode"

    const v1, 0x10104da

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintModeId:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch$InspectionCompanion;->mPropertiesMapped:Z

    .line 114
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/Switch;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/Switch;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 118
    iget-boolean v0, p0, Landroid/widget/Switch$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_8c

    .line 121
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mShowTextId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getShowText()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 122
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSplitTrackId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getSplitTrack()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 123
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSwitchMinWidthId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getSwitchMinWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 124
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSwitchPaddingId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getSwitchPadding()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 125
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTextOffId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 126
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTextOnId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 127
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 128
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTextPaddingId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbTextPadding()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 129
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 130
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 131
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintModeId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 132
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 133
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 134
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 135
    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintModeId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 136
    return-void

    .line 119
    :cond_8c
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
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Switch$InspectionCompanion;->readProperties(Landroid/widget/Switch;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
