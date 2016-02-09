.class Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapperDonut.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/support/v4/graphics/drawable/DrawableWrapper;


# static fields
.field static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private mColorFilterSet:Z

.field private mCurrentColor:I

.field private mCurrentMode:Landroid/graphics/PorterDuff$Mode;

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mTintList:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@2
    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@4
    .line 33
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 38
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@5
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@7
    .line 47
    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a
    .line 46
    return-void
.end method

.method private updateTint([I)Z
    .locals 6
    .param p1, "state"    # [I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 208
    iget-object v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mTintList:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v2, :cond_2

    #@6
    iget-object v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    if-eqz v2, :cond_2

    #@a
    .line 209
    iget-object v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mTintList:Landroid/content/res/ColorStateList;

    #@c
    iget-object v3, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mTintList:Landroid/content/res/ColorStateList;

    #@e
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@11
    move-result v3

    #@12
    invoke-virtual {v2, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@15
    move-result v0

    #@16
    .line 210
    .local v0, "color":I
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@18
    .line 211
    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    iget-boolean v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mColorFilterSet:Z

    #@1a
    if-eqz v2, :cond_0

    #@1c
    iget v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mCurrentColor:I

    #@1e
    if-eq v0, v2, :cond_1

    #@20
    .line 212
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@23
    .line 213
    iput v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mCurrentColor:I

    #@25
    .line 214
    iput-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    .line 215
    iput-boolean v5, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mColorFilterSet:Z

    #@29
    .line 216
    return v5

    #@2a
    .line 211
    :cond_1
    iget-object v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    #@2c
    if-ne v1, v2, :cond_0

    #@2e
    .line 222
    .end local v0    # "color":I
    .end local v1    # "mode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    return v4

    #@2f
    .line 219
    :cond_2
    iput-boolean v4, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mColorFilterSet:Z

    #@31
    .line 220
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->clearColorFilter()V

    #@34
    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@5
    .line 51
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getState()[I
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->invalidateSelf()V

    #@3
    .line 167
    return-void
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mTintList:Landroid/content/res/ColorStateList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mTintList:Landroid/content/res/ColorStateList;

    #@6
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@11
    move-result v0

    #@12
    :goto_0
    return v0

    #@13
    :cond_1
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 154
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 155
    .local v1, "wrapped":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    .line 156
    .local v0, "mutated":Landroid/graphics/drawable/Drawable;
    if-eq v0, v1, :cond_0

    #@8
    .line 158
    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 161
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@5
    .line 56
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    #@0
    .prologue
    .line 175
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->scheduleSelf(Ljava/lang/Runnable;J)V

    #@3
    .line 174
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@5
    .line 81
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    #@5
    .line 61
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@5
    .line 86
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    #@5
    .line 71
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    #@5
    .line 76
    return-void
.end method

.method public setState([I)Z
    .locals 2
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 97
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@5
    move-result v0

    #@6
    .line 98
    .local v0, "handled":Z
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->updateTint([I)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 99
    .end local v0    # "handled":Z
    :goto_0
    return v0

    #@d
    .line 98
    .restart local v0    # "handled":Z
    :cond_0
    const/4 v0, 0x1

    #@e
    .local v0, "handled":Z
    goto :goto_0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    #@0
    .prologue
    .line 192
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->setTintList(Landroid/content/res/ColorStateList;)V

    #@7
    .line 191
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 197
    iput-object p1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 198
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->getState()[I

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->updateTint([I)Z

    #@9
    .line 196
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 203
    iput-object p1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 204
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->getState()[I

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->updateTint([I)Z

    #@9
    .line 202
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 236
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 237
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 240
    :cond_0
    iput-object p1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    .line 242
    if-eqz p1, :cond_1

    #@e
    .line 243
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@11
    .line 246
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->invalidateSelf()V

    #@14
    .line 235
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 182
    invoke-virtual {p0, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@3
    .line 181
    return-void
.end method
