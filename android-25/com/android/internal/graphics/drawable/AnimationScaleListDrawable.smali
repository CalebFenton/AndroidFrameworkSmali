.class public Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "AnimationScaleListDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationScaleListDrawable"


# instance fields
.field private mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 53
    invoke-direct {p0, v0, v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;)V

    #@4
    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    #@3
    .line 59
    new-instance v0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    #@5
    invoke-direct {v0, p1, p0, p2}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;Landroid/content/res/Resources;)V

    #@8
    .line 60
    .local v0, "newState":Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@b
    .line 61
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->onStateChange([I)Z

    #@12
    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    .line 96
    iget-object v4, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    #@3
    .line 97
    .local v4, "state":Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v6

    #@7
    add-int/lit8 v3, v6, 0x1

    #@9
    .line 100
    .local v3, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@c
    move-result v5

    #@d
    .local v5, "type":I
    const/4 v6, 0x1

    #@e
    if-eq v5, v6, :cond_5

    #@10
    .line 101
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v1

    #@14
    .local v1, "depth":I
    if-ge v1, v3, :cond_1

    #@16
    .line 102
    const/4 v6, 0x3

    #@17
    if-eq v5, v6, :cond_5

    #@19
    .line 103
    :cond_1
    if-ne v5, v8, :cond_0

    #@1b
    .line 107
    if-gt v1, v3, :cond_0

    #@1d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    const-string/jumbo v7, "item"

    #@24
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_0

    #@2a
    .line 113
    sget-object v6, Lcom/android/internal/R$styleable;->AnimationScaleListDrawableItem:[I

    #@2c
    .line 112
    invoke-static {p1, p4, p3, v6}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2f
    move-result-object v0

    #@30
    .line 114
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    #@31
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@34
    move-result-object v2

    #@35
    .line 115
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@38
    .line 118
    if-nez v2, :cond_4

    #@3a
    .line 119
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3d
    move-result v5

    #@3e
    const/4 v6, 0x4

    #@3f
    if-eq v5, v6, :cond_2

    #@41
    .line 121
    if-eq v5, v8, :cond_3

    #@43
    .line 122
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@45
    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    .line 124
    const-string/jumbo v8, ": <item> tag requires a \'drawable\' attribute or "

    #@55
    .line 123
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    .line 125
    const-string/jumbo v8, "child tag defining a drawable"

    #@5c
    .line 123
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    .line 122
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@67
    throw v6

    #@68
    .line 127
    :cond_3
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@6b
    move-result-object v2

    #@6c
    .line 130
    :cond_4
    invoke-virtual {v4, v2}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->addDrawable(Landroid/graphics/drawable/Drawable;)I

    #@6f
    goto :goto_0

    #@70
    .line 95
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "depth":I
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_5
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 242
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->onStateChange([I)Z

    #@a
    .line 239
    return-void
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 145
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    #@3
    .line 146
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mMutated:Z

    #@6
    .line 144
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    sget-object v1, Lcom/android/internal/R$styleable;->AnimationScaleListDrawable:[I

    #@2
    .line 80
    invoke-static {p1, p4, p3, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->updateDensity(Landroid/content/res/Resources;)V

    #@9
    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@c
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@f
    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p0, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->onStateChange([I)Z

    #@16
    .line 79
    return-void
.end method

.method public isRunning()Z
    .locals 3

    #@0
    .prologue
    .line 167
    const/4 v1, 0x0

    #@1
    .line 168
    .local v1, "result":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 169
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 170
    check-cast v0, Landroid/graphics/drawable/Animatable;

    #@d
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    #@10
    move-result v1

    #@11
    .line 172
    .end local v1    # "result":Z
    :cond_0
    return v1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 137
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mutate()V

    #@f
    .line 138
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mMutated:Z

    #@12
    .line 140
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    #@3
    move-result v0

    #@4
    .line 71
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    #@6
    invoke-virtual {v2}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->getCurrentDrawableIndexBasedOnScale()I

    #@9
    move-result v1

    #@a
    .line 72
    .local v1, "idx":I
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .end local v0    # "changed":Z
    :goto_0
    return v0

    #@11
    .restart local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@0
    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@3
    .line 249
    instance-of v0, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 250
    nop

    #@8
    nop

    #@9
    .end local p1    # "state":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    #@b
    .line 246
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    #@0
    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 152
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@6
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 153
    check-cast v0, Landroid/graphics/drawable/Animatable;

    #@c
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    #@f
    .line 150
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 160
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@6
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 161
    check-cast v0, Landroid/graphics/drawable/Animatable;

    #@c
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    #@f
    .line 158
    :cond_0
    return-void
.end method
