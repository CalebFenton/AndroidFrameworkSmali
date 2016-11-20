.class public Landroid/graphics/drawable/LevelListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "LevelListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    }
.end annotation


# instance fields
.field private mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 65
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V

    #@4
    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 246
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    #@3
    .line 247
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@5
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;Landroid/content/res/Resources;)V

    #@8
    .line 248
    .local v0, "as":Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LevelListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@b
    .line 249
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    #@12
    .line 246
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;Landroid/graphics/drawable/LevelListDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 11
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
    .line 100
    const/4 v6, 0x0

    #@1
    .line 102
    .local v6, "low":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v8

    #@5
    add-int/lit8 v5, v8, 0x1

    #@7
    .line 104
    .local v5, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a
    move-result v7

    #@b
    .local v7, "type":I
    const/4 v8, 0x1

    #@c
    if-eq v7, v8, :cond_5

    #@e
    .line 105
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v1

    #@12
    .local v1, "depth":I
    if-ge v1, v5, :cond_1

    #@14
    .line 106
    const/4 v8, 0x3

    #@15
    if-eq v7, v8, :cond_5

    #@17
    .line 107
    :cond_1
    const/4 v8, 0x2

    #@18
    if-ne v7, v8, :cond_0

    #@1a
    .line 111
    if-gt v1, v5, :cond_0

    #@1c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    const-string/jumbo v9, "item"

    #@23
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_0

    #@29
    .line 116
    sget-object v8, Lcom/android/internal/R$styleable;->LevelListDrawableItem:[I

    #@2b
    .line 115
    invoke-static {p1, p4, p3, v8}, Landroid/graphics/drawable/LevelListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2e
    move-result-object v0

    #@2f
    .line 119
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x1

    #@30
    const/4 v9, 0x0

    #@31
    .line 118
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@34
    move-result v6

    #@35
    .line 121
    const/4 v8, 0x2

    #@36
    const/4 v9, 0x0

    #@37
    .line 120
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3a
    move-result v4

    #@3b
    .line 123
    .local v4, "high":I
    const/4 v8, 0x0

    #@3c
    const/4 v9, 0x0

    #@3d
    .line 122
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@40
    move-result v3

    #@41
    .line 125
    .local v3, "drawableRes":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@44
    .line 127
    if-gez v4, :cond_2

    #@46
    .line 128
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    #@48
    new-instance v9, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    .line 129
    const-string/jumbo v10, ": <item> tag requires a \'maxLevel\' attribute"

    #@58
    .line 128
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v9

    #@5c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v9

    #@60
    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@63
    throw v8

    #@64
    .line 133
    :cond_2
    if-eqz v3, :cond_3

    #@66
    .line 134
    invoke-virtual {p1, v3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@69
    move-result-object v2

    #@6a
    .line 147
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v8, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@6c
    invoke-virtual {v8, v6, v4, v2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    #@6f
    goto :goto_0

    #@70
    .line 136
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@73
    move-result v7

    #@74
    const/4 v8, 0x4

    #@75
    if-eq v7, v8, :cond_3

    #@77
    .line 138
    const/4 v8, 0x2

    #@78
    if-eq v7, v8, :cond_4

    #@7a
    .line 139
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    #@7c
    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@84
    move-result-object v10

    #@85
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    .line 141
    const-string/jumbo v10, ": <item> tag requires a \'drawable\' attribute or "

    #@8c
    .line 140
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v9

    #@90
    .line 142
    const-string/jumbo v10, "child tag defining a drawable"

    #@93
    .line 140
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v9

    #@97
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v9

    #@9b
    .line 139
    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v8

    #@9f
    .line 144
    :cond_4
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@a2
    move-result-object v2

    #@a3
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    #@a4
    .line 150
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "depth":I
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "drawableRes":I
    .end local v4    # "high":I
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    #@a7
    move-result v8

    #@a8
    invoke-virtual {p0, v8}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    #@ab
    .line 97
    return-void
.end method


# virtual methods
.method public addLevel(IILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 69
    if-eqz p3, :cond_0

    #@2
    .line 70
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@4
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    #@7
    .line 72
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    #@e
    .line 68
    :cond_0
    return-void
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 171
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    #@3
    .line 172
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    #@6
    .line 170
    return-void
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    #@0
    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->cloneConstantState()Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method cloneConstantState()Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .locals 3

    #@0
    .prologue
    .line 164
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;Landroid/content/res/Resources;)V

    #@8
    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
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
    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableContainer;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 91
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LevelListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    #@6
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LevelListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@9
    .line 89
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 156
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@c
    invoke-static {v0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->-wrap0(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)V

    #@f
    .line 157
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    #@12
    .line 159
    :cond_0
    return-object p0
.end method

.method protected onLevelChange(I)Z
    .locals 2
    .param p1, "level"    # I

    #@0
    .prologue
    .line 80
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->indexOfLevel(I)I

    #@5
    move-result v0

    #@6
    .line 81
    .local v0, "idx":I
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LevelListDrawable;->selectDrawable(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 82
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onLevelChange(I)Z

    #@11
    move-result v1

    #@12
    return v1
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@0
    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@3
    .line 241
    instance-of v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 242
    check-cast p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@9
    .end local p1    # "state":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    iput-object p1, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@b
    .line 238
    :cond_0
    return-void
.end method
