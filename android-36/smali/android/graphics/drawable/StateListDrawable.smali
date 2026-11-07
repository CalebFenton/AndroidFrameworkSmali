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
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "StateListDrawable"


# instance fields
.field private greylist-max-o mMutated:Z

.field private greylist mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    .line 74
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V
    .registers 2
    .param p1, "state"    # Landroid/graphics/drawable/StateListDrawable$StateListState;

    .line 408
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 409
    if-eqz p1, :cond_8

    .line 410
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 412
    :cond_8
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "state"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 397
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 399
    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 400
    .local v0, "newState":Landroid/graphics/drawable/StateListDrawable$StateListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 401
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 402
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 16
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

    .line 163
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    .line 164
    .local v0, "state":Landroid/graphics/drawable/StateListDrawable$StateListState;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 167
    .local v1, "innerDepth":I
    :cond_8
    :goto_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_72

    .line 168
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_19

    const/4 v3, 0x3

    if-eq v4, v3, :cond_72

    .line 170
    :cond_19
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1d

    .line 171
    goto :goto_8

    .line 174
    :cond_1d
    if-gt v5, v1, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 175
    goto :goto_8

    .line 180
    :cond_2d
    sget-object v6, Lcom/android/internal/R$styleable;->StateListDrawableItem:[I

    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/StateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 182
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 183
    .local v7, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/StateListDrawable;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v8

    .line 190
    .local v8, "states":[I
    if-nez v7, :cond_6e

    .line 191
    :goto_41
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v4, v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4a

    goto :goto_41

    .line 193
    :cond_4a
    if-ne v4, v3, :cond_51

    .line 199
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_6e

    .line 194
    :cond_51
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_6e
    :goto_6e
    invoke-virtual {v0, v8, v7}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 203
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v8    # "states":[I
    goto :goto_8

    .line 204
    .end local v5    # "depth":I
    :cond_72
    return-void
.end method

.method private greylist-max-r updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 136
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    .line 139
    .local v0, "state":Landroid/graphics/drawable/StateListDrawable$StateListState;
    iget v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    .line 142
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    .line 144
    const/4 v1, 0x2

    iget-boolean v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    .line 146
    const/4 v1, 0x3

    iget-boolean v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    .line 148
    const/4 v1, 0x4

    iget v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    .line 150
    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    .line 152
    const/4 v1, 0x0

    iget-boolean v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    .line 154
    const/4 v1, 0x6

    iget-boolean v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mAutoMirrored:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mAutoMirrored:Z

    .line 156
    return-void
.end method


# virtual methods
.method public whitelist addState([ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 86
    if-eqz p2, :cond_e

    .line 87
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 91
    :cond_e
    return-void
.end method

.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 384
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 386
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 387
    return-void
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 305
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    .line 307
    return-void
.end method

.method bridge synthetic blacklist cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .registers 2

    .line 63
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->cloneConstantState()Landroid/graphics/drawable/StateListDrawable$StateListState;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o cloneConstantState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .registers 4

    .line 298
    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method greylist-max-r extractStateSet(Landroid/util/AttributeSet;)[I
    .registers 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "j":I
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    .line 216
    .local v1, "numAttrs":I
    new-array v2, v1, [I

    .line 217
    .local v2, "states":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_25

    .line 218
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 219
    .local v4, "stateResId":I
    sparse-switch v4, :sswitch_data_2a

    .line 228
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "j":I
    .local v5, "j":I
    const/4 v6, 0x0

    invoke-interface {p1, v3, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 229
    move v6, v4

    goto :goto_1f

    .line 226
    .end local v5    # "j":I
    .restart local v0    # "j":I
    :sswitch_1c
    goto :goto_22

    .line 221
    :sswitch_1d
    goto :goto_22

    .line 229
    .end local v0    # "j":I
    .restart local v5    # "j":I
    :cond_1e
    neg-int v6, v4

    :goto_1f
    aput v6, v2, v0

    move v0, v5

    .line 217
    .end local v4    # "stateResId":I
    .end local v5    # "j":I
    .restart local v0    # "j":I
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 232
    .end local v3    # "i":I
    :cond_25
    invoke-static {v2, v0}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    .line 233
    return-object v2

    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_1d
        0x10100d0 -> :sswitch_1c
        0x1010199 -> :sswitch_1c
    .end sparse-switch
.end method

.method public whitelist findStateDrawableIndex([I)I
    .registers 3
    .param p1, "stateSet"    # [I

    .line 284
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    return v0
.end method

.method public whitelist getStateCount()I
    .registers 2

    .line 248
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public whitelist getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "index"    # I

    .line 272
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getStateListState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method public whitelist getStateSet(I)[I
    .registers 3
    .param p1, "index"    # I

    .line 260
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
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

    .line 120
    sget-object v0, Lcom/android/internal/R$styleable;->StateListDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/StateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 122
    invoke-direct {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 123
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    .line 124
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/StateListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 128
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 129
    return-void
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 289
    iget-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v0, :cond_12

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_12

    .line 290
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->mutate()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    .line 293
    :cond_12
    return-object p0
.end method

.method protected whitelist onStateChange([I)Z
    .registers 6
    .param p1, "stateSet"    # [I

    .line 105
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v0

    .line 107
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v1

    .line 110
    .local v1, "idx":I
    if-gez v1, :cond_14

    .line 111
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v1

    .line 114
    :cond_14
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v2

    if-nez v2, :cond_1f

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v2, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v2, 0x1

    :goto_20
    return v2
.end method

.method protected whitelist setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 390
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 392
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;

    if-eqz v0, :cond_c

    .line 393
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    .line 395
    :cond_c
    return-void
.end method
