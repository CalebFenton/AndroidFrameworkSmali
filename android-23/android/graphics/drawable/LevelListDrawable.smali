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
    .line 240
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    #@3
    .line 241
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@5
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;Landroid/content/res/Resources;)V

    #@8
    .line 242
    .local v0, "as":Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LevelListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@b
    .line 243
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    #@12
    .line 240
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
    .line 165
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    #@3
    .line 166
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    #@6
    .line 164
    return-void
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    #@0
    .prologue
    .line 157
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
    .line 158
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
    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableContainer;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 94
    const/4 v6, 0x0

    #@4
    .line 96
    .local v6, "low":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@7
    move-result v8

    #@8
    add-int/lit8 v5, v8, 0x1

    #@a
    .line 98
    .local v5, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@d
    move-result v7

    #@e
    .local v7, "type":I
    const/4 v8, 0x1

    #@f
    if-eq v7, v8, :cond_5

    #@11
    .line 99
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@14
    move-result v1

    #@15
    .local v1, "depth":I
    if-ge v1, v5, :cond_1

    #@17
    .line 100
    const/4 v8, 0x3

    #@18
    if-eq v7, v8, :cond_5

    #@1a
    .line 101
    :cond_1
    const/4 v8, 0x2

    #@1b
    if-ne v7, v8, :cond_0

    #@1d
    .line 105
    if-gt v1, v5, :cond_0

    #@1f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    const-string/jumbo v9, "item"

    #@26
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v8

    #@2a
    if-eqz v8, :cond_0

    #@2c
    .line 110
    sget-object v8, Lcom/android/internal/R$styleable;->LevelListDrawableItem:[I

    #@2e
    .line 109
    invoke-static {p1, p4, p3, v8}, Landroid/graphics/drawable/LevelListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@31
    move-result-object v0

    #@32
    .line 113
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x1

    #@33
    const/4 v9, 0x0

    #@34
    .line 112
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@37
    move-result v6

    #@38
    .line 115
    const/4 v8, 0x2

    #@39
    const/4 v9, 0x0

    #@3a
    .line 114
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3d
    move-result v4

    #@3e
    .line 117
    .local v4, "high":I
    const/4 v8, 0x0

    #@3f
    const/4 v9, 0x0

    #@40
    .line 116
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@43
    move-result v3

    #@44
    .line 119
    .local v3, "drawableRes":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@47
    .line 121
    if-gez v4, :cond_2

    #@49
    .line 122
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    #@4b
    new-instance v9, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@53
    move-result-object v10

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    .line 123
    const-string/jumbo v10, ": <item> tag requires a \'maxLevel\' attribute"

    #@5b
    .line 122
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@66
    throw v8

    #@67
    .line 127
    :cond_2
    if-eqz v3, :cond_3

    #@69
    .line 128
    invoke-virtual {p1, v3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@6c
    move-result-object v2

    #@6d
    .line 141
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v8, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@6f
    invoke-virtual {v8, v6, v4, v2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    #@72
    goto :goto_0

    #@73
    .line 130
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@76
    move-result v7

    #@77
    const/4 v8, 0x4

    #@78
    if-eq v7, v8, :cond_3

    #@7a
    .line 132
    const/4 v8, 0x2

    #@7b
    if-eq v7, v8, :cond_4

    #@7d
    .line 133
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    #@7f
    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@87
    move-result-object v10

    #@88
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v9

    #@8c
    .line 135
    const-string/jumbo v10, ": <item> tag requires a \'drawable\' attribute or "

    #@8f
    .line 134
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v9

    #@93
    .line 136
    const-string/jumbo v10, "child tag defining a drawable"

    #@96
    .line 134
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v9

    #@9a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v9

    #@9e
    .line 133
    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v8

    #@a2
    .line 138
    :cond_4
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@a5
    move-result-object v2

    #@a6
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    #@a7
    .line 144
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "depth":I
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "drawableRes":I
    .end local v4    # "high":I
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    #@aa
    move-result v8

    #@ab
    invoke-virtual {p0, v8}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    #@ae
    .line 89
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 149
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
    .line 150
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@c
    invoke-static {v0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->-wrap0(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)V

    #@f
    .line 151
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    #@12
    .line 153
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
    .line 233
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@3
    .line 235
    instance-of v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 236
    check-cast p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@9
    .end local p1    # "state":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    iput-object p1, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    #@b
    .line 232
    :cond_0
    return-void
.end method
