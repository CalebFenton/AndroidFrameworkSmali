.class public Landroid/graphics/drawable/StateListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StateListDrawable"


# instance fields
.field private mMutated:Z

.field private mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 70
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    #@4
    .line 69
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@0
    .prologue
    .line 394
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    #@3
    .line 395
    if-eqz p1, :cond_0

    #@5
    .line 396
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@8
    .line 394
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 383
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    #@3
    .line 385
    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@5
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    #@8
    .line 386
    .local v0, "newState":Landroid/graphics/drawable/StateListDrawable$StateListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@b
    .line 387
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    #@12
    .line 383
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
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
    const/4 v9, 0x2

    #@1
    .line 151
    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@3
    .line 152
    .local v4, "state":Landroid/graphics/drawable/StateListDrawable$StateListState;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v7

    #@7
    add-int/lit8 v3, v7, 0x1

    #@9
    .line 155
    .local v3, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@c
    move-result v6

    #@d
    .local v6, "type":I
    const/4 v7, 0x1

    #@e
    if-eq v6, v7, :cond_5

    #@10
    .line 156
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v1

    #@14
    .local v1, "depth":I
    if-ge v1, v3, :cond_1

    #@16
    .line 157
    const/4 v7, 0x3

    #@17
    if-eq v6, v7, :cond_5

    #@19
    .line 158
    :cond_1
    if-ne v6, v9, :cond_0

    #@1b
    .line 162
    if-gt v1, v3, :cond_0

    #@1d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v7

    #@21
    const-string/jumbo v8, "item"

    #@24
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_0

    #@2a
    .line 169
    sget-object v7, Lcom/android/internal/R$styleable;->StateListDrawableItem:[I

    #@2c
    .line 168
    invoke-static {p1, p4, p3, v7}, Landroid/graphics/drawable/StateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2f
    move-result-object v0

    #@30
    .line 170
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    #@31
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@34
    move-result-object v2

    #@35
    .line 171
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@38
    .line 173
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/StateListDrawable;->extractStateSet(Landroid/util/AttributeSet;)[I

    #@3b
    move-result-object v5

    #@3c
    .line 178
    .local v5, "states":[I
    if-nez v2, :cond_4

    #@3e
    .line 179
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@41
    move-result v6

    #@42
    const/4 v7, 0x4

    #@43
    if-eq v6, v7, :cond_2

    #@45
    .line 181
    if-eq v6, v9, :cond_3

    #@47
    .line 182
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    #@49
    .line 183
    new-instance v8, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v8

    #@56
    .line 184
    const-string/jumbo v9, ": <item> tag requires a \'drawable\' attribute or "

    #@59
    .line 183
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v8

    #@5d
    .line 185
    const-string/jumbo v9, "child tag defining a drawable"

    #@60
    .line 183
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v8

    #@68
    .line 182
    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v7

    #@6c
    .line 187
    :cond_3
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@6f
    move-result-object v2

    #@70
    .line 190
    :cond_4
    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    #@73
    goto :goto_0

    #@74
    .line 150
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "depth":I
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "states":[I
    :cond_5
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@2
    .line 127
    .local v0, "state":Landroid/graphics/drawable/StateListDrawable$StateListState;
    iget v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    #@4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@7
    move-result v2

    #@8
    or-int/2addr v1, v2

    #@9
    iput v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    #@b
    .line 130
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    #@11
    .line 133
    iget-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    #@13
    const/4 v2, 0x2

    #@14
    .line 132
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@17
    move-result v1

    #@18
    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    #@1a
    .line 135
    iget-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    #@1c
    const/4 v2, 0x3

    #@1d
    .line 134
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@20
    move-result v1

    #@21
    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    #@23
    .line 137
    iget v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    #@25
    const/4 v2, 0x4

    #@26
    .line 136
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@29
    move-result v1

    #@2a
    iput v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    #@2c
    .line 139
    iget v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    #@2e
    const/4 v2, 0x5

    #@2f
    .line 138
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@32
    move-result v1

    #@33
    iput v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    #@35
    .line 141
    iget-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    #@37
    const/4 v2, 0x0

    #@38
    .line 140
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3b
    move-result v1

    #@3c
    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    #@3e
    .line 143
    iget-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mAutoMirrored:Z

    #@40
    const/4 v2, 0x6

    #@41
    .line 142
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@44
    move-result v1

    #@45
    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mAutoMirrored:Z

    #@47
    .line 123
    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 81
    if-eqz p2, :cond_0

    #@2
    .line 82
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    #@7
    .line 84
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    #@e
    .line 80
    :cond_0
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 372
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    #@a
    .line 369
    return-void
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 296
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    #@3
    .line 297
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    #@6
    .line 295
    return-void
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    #@0
    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->cloneConstantState()Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method cloneConstantState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .locals 3

    #@0
    .prologue
    .line 289
    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    #@8
    return-object v0
.end method

.method extractStateSet(Landroid/util/AttributeSet;)[I
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 201
    const/4 v1, 0x0

    #@1
    .line 202
    .local v1, "j":I
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    #@4
    move-result v3

    #@5
    .line 203
    .local v3, "numAttrs":I
    new-array v5, v3, [I

    #@7
    .line 204
    .local v5, "states":[I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    move v2, v1

    #@9
    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@b
    .line 205
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    #@e
    move-result v4

    #@f
    .line 206
    .local v4, "stateResId":I
    sparse-switch v4, :sswitch_data_0

    #@12
    .line 215
    add-int/lit8 v1, v2, 0x1

    #@14
    .end local v2    # "j":I
    .restart local v1    # "j":I
    const/4 v6, 0x0

    #@15
    invoke-interface {p1, v0, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_0

    #@1b
    .end local v4    # "stateResId":I
    :goto_1
    aput v4, v5, v2

    #@1d
    .line 204
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@1f
    move v2, v1

    #@20
    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    #@21
    .restart local v4    # "stateResId":I
    :sswitch_0
    move v1, v2

    #@22
    .line 208
    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_2

    #@23
    .end local v1    # "j":I
    .restart local v2    # "j":I
    :sswitch_1
    move v1, v2

    #@24
    .line 213
    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_2

    #@25
    .line 216
    :cond_0
    neg-int v4, v4

    #@26
    goto :goto_1

    #@27
    .line 219
    .end local v1    # "j":I
    .end local v4    # "stateResId":I
    .restart local v2    # "j":I
    :cond_1
    invoke-static {v5, v2}, Landroid/util/StateSet;->trimStateSet([II)[I

    #@2a
    move-result-object v5

    #@2b
    .line 220
    return-object v5

    #@2c
    .line 206
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10100d0 -> :sswitch_1
        0x1010199 -> :sswitch_1
    .end sparse-switch
.end method

.method public getStateCount()I
    .locals 1

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChild(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStateDrawableIndex([I)I
    .locals 1
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getStateListState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@2
    return-object v0
.end method

.method public getStateSet(I)[I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@4
    aget-object v0, v0, p1

    #@6
    return-object v0
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
    .line 110
    sget-object v1, Lcom/android/internal/R$styleable;->StateListDrawable:[I

    #@2
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/StateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    #@7
    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    #@a
    .line 112
    invoke-direct {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@d
    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@10
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/StateListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@13
    .line 117
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    #@1a
    .line 109
    return-void
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 90
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 280
    iget-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 281
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@c
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->mutate()V

    #@f
    .line 282
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    #@12
    .line 284
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    #@3
    move-result v0

    #@4
    .line 97
    .local v0, "changed":Z
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@6
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    #@9
    move-result v1

    #@a
    .line 100
    .local v1, "idx":I
    if-gez v1, :cond_0

    #@c
    .line 101
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@e
    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    #@10
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    #@13
    move-result v1

    #@14
    .line 104
    :cond_0
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_1

    #@1a
    .end local v0    # "changed":Z
    :goto_0
    return v0

    #@1b
    .restart local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x1

    #@1c
    goto :goto_0
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@0
    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@3
    .line 378
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 379
    check-cast p1, Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@9
    .end local p1    # "state":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    iput-object p1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #@b
    .line 375
    :cond_0
    return-void
.end method
