.class public final Landroid/widget/Toolbar$InspectionCompanion;
.super Ljava/lang/Object;
.source "Toolbar$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/Toolbar;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCollapseContentDescriptionId:I

.field private blacklist mCollapseIconId:I

.field private blacklist mContentInsetEndId:I

.field private blacklist mContentInsetEndWithActionsId:I

.field private blacklist mContentInsetLeftId:I

.field private blacklist mContentInsetRightId:I

.field private blacklist mContentInsetStartId:I

.field private blacklist mContentInsetStartWithNavigationId:I

.field private blacklist mLogoDescriptionId:I

.field private blacklist mLogoId:I

.field private blacklist mNavigationContentDescriptionId:I

.field private blacklist mNavigationIconId:I

.field private blacklist mPopupThemeId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mSubtitleId:I

.field private blacklist mTitleId:I

.field private blacklist mTitleMarginBottomId:I

.field private blacklist mTitleMarginEndId:I

.field private blacklist mTitleMarginStartId:I

.field private blacklist mTitleMarginTopId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 118
    const-string v0, "collapseContentDescription"

    const v1, 0x10104d0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mCollapseContentDescriptionId:I

    .line 119
    const-string v0, "collapseIcon"

    const v1, 0x10104ff

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mCollapseIconId:I

    .line 120
    const-string v0, "contentInsetEnd"

    const v1, 0x1010454

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetEndId:I

    .line 121
    const-string v0, "contentInsetEndWithActions"

    const v1, 0x1010523

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetEndWithActionsId:I

    .line 122
    const-string v0, "contentInsetLeft"

    const v1, 0x1010455

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetLeftId:I

    .line 123
    const-string v0, "contentInsetRight"

    const v1, 0x1010456

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetRightId:I

    .line 124
    const-string v0, "contentInsetStart"

    const v1, 0x1010453

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetStartId:I

    .line 125
    const-string v0, "contentInsetStartWithNavigation"

    const v1, 0x1010522

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetStartWithNavigationId:I

    .line 126
    const-string v0, "logo"

    const v1, 0x10102be

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mLogoId:I

    .line 127
    const-string v0, "logoDescription"

    const v1, 0x10104e9

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mLogoDescriptionId:I

    .line 128
    const-string v0, "navigationContentDescription"

    const v1, 0x10104c1

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mNavigationContentDescriptionId:I

    .line 129
    const-string v0, "navigationIcon"

    const v1, 0x10104c0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mNavigationIconId:I

    .line 130
    const-string v0, "popupTheme"

    const v1, 0x10104a9

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mPopupThemeId:I

    .line 131
    const-string/jumbo v0, "subtitle"

    const v1, 0x10102d1

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mSubtitleId:I

    .line 132
    const-string/jumbo v0, "title"

    const v1, 0x10101e1

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mTitleId:I

    .line 133
    const-string/jumbo v0, "titleMarginBottom"

    const v1, 0x10104fc

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mTitleMarginBottomId:I

    .line 134
    const-string/jumbo v0, "titleMarginEnd"

    const v1, 0x10104fa

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mTitleMarginEndId:I

    .line 135
    const-string/jumbo v0, "titleMarginStart"

    const v1, 0x10104f9

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mTitleMarginStartId:I

    .line 136
    const-string/jumbo v0, "titleMarginTop"

    const v1, 0x10104fb

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mTitleMarginTopId:I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    .line 138
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/Toolbar;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/Toolbar;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 142
    iget-boolean v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_b0

    .line 145
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mCollapseContentDescriptionId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getCollapseContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 146
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mCollapseIconId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getCollapseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 147
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetEndId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 148
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetEndWithActionsId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getContentInsetEndWithActions()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 149
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetLeftId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getContentInsetLeft()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 150
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetRightId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getContentInsetRight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 151
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetStartId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 152
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mContentInsetStartWithNavigationId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getContentInsetStartWithNavigation()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 153
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mLogoId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 154
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mLogoDescriptionId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getLogoDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 155
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mNavigationContentDescriptionId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 156
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mNavigationIconId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 157
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mPopupThemeId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getPopupTheme()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 158
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mSubtitleId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 159
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mTitleId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 160
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mTitleMarginBottomId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getTitleMarginBottom()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 161
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mTitleMarginEndId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getTitleMarginEnd()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 162
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mTitleMarginStartId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getTitleMarginStart()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 163
    iget v0, p0, Landroid/widget/Toolbar$InspectionCompanion;->mTitleMarginTopId:I

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getTitleMarginTop()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 164
    return-void

    .line 143
    :cond_b0
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
    check-cast p1, Landroid/widget/Toolbar;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Toolbar$InspectionCompanion;->readProperties(Landroid/widget/Toolbar;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
