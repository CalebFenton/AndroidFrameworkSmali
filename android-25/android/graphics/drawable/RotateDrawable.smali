.class public Landroid/graphics/drawable/RotateDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RotateDrawable$RotateState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mState:Landroid/graphics/drawable/RotateDrawable$RotateState;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    #@9
    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/RotateDrawable$RotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    #@3
    .line 361
    iput-object p1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@5
    .line 358
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/RotateDrawable$RotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v8, 0x5

    #@1
    const/4 v7, 0x4

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    const/high16 v6, 0x3f800000    # 1.0f

    #@6
    .line 113
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@8
    .line 114
    .local v0, "state":Landroid/graphics/drawable/RotateDrawable$RotateState;
    if-nez v0, :cond_0

    #@a
    .line 115
    return-void

    #@b
    .line 119
    :cond_0
    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    #@d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@10
    move-result v5

    #@11
    or-int/2addr v2, v5

    #@12
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    #@14
    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@17
    move-result-object v2

    #@18
    invoke-static {v0, v2}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-set0(Landroid/graphics/drawable/RotateDrawable$RotateState;[I)[I

    #@1b
    .line 124
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 125
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@24
    move-result-object v1

    #@25
    .line 126
    .local v1, "tv":Landroid/util/TypedValue;
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@27
    const/4 v5, 0x6

    #@28
    if-ne v2, v5, :cond_3

    #@2a
    move v2, v3

    #@2b
    :goto_0
    iput-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@2d
    .line 127
    iget-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@2f
    if-eqz v2, :cond_4

    #@31
    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    #@34
    move-result v2

    #@35
    :goto_1
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@37
    .line 130
    .end local v1    # "tv":Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_2

    #@3d
    .line 131
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@40
    move-result-object v1

    #@41
    .line 132
    .restart local v1    # "tv":Landroid/util/TypedValue;
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@43
    const/4 v5, 0x6

    #@44
    if-ne v2, v5, :cond_5

    #@46
    :goto_2
    iput-boolean v3, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@48
    .line 133
    iget-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@4a
    if-eqz v2, :cond_6

    #@4c
    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    #@4f
    move-result v2

    #@50
    :goto_3
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@52
    .line 137
    .end local v1    # "tv":Landroid/util/TypedValue;
    :cond_2
    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@54
    const/4 v3, 0x2

    #@55
    .line 136
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@58
    move-result v2

    #@59
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@5b
    .line 139
    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@5d
    const/4 v3, 0x3

    #@5e
    .line 138
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@61
    move-result v2

    #@62
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@64
    .line 140
    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@66
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    #@68
    .line 112
    return-void

    #@69
    .restart local v1    # "tv":Landroid/util/TypedValue;
    :cond_3
    move v2, v4

    #@6a
    .line 126
    goto :goto_0

    #@6b
    .line 127
    :cond_4
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    #@6e
    move-result v2

    #@6f
    goto :goto_1

    #@70
    :cond_5
    move v3, v4

    #@71
    .line 132
    goto :goto_2

    #@72
    .line 133
    :cond_6
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    #@75
    move-result v2

    #@76
    goto :goto_3
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_1

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@8
    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-get0(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 105
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@10
    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-get0(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    #@13
    move-result-object v0

    #@14
    const/4 v1, 0x1

    #@15
    aget v0, v0, v1

    #@17
    if-nez v0, :cond_1

    #@19
    .line 106
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 107
    const-string/jumbo v2, ": <rotate> tag requires a \'drawable\' attribute or "

    #@2b
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 108
    const-string/jumbo v2, "child tag defining a drawable"

    #@32
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 102
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 84
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@5
    .line 85
    .local v2, "state":Landroid/graphics/drawable/RotateDrawable$RotateState;
    if-nez v2, :cond_0

    #@7
    .line 86
    return-void

    #@8
    .line 89
    :cond_0
    invoke-static {v2}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-get0(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    #@b
    move-result-object v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 90
    invoke-static {v2}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-get0(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    #@11
    move-result-object v3

    #@12
    sget-object v4, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    #@14
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@17
    move-result-object v0

    #@18
    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@1b
    .line 93
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@21
    .line 81
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    return-void

    #@22
    .line 94
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@23
    .line 95
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/RotateDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    goto :goto_0

    #@2a
    .line 96
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@2b
    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2e
    .line 96
    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v1

    #@4
    .line 146
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    .line 147
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    #@a
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@c
    sub-int v7, v8, v9

    #@e
    .line 148
    .local v7, "w":I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    #@10
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@12
    sub-int v2, v8, v9

    #@14
    .line 149
    .local v2, "h":I
    iget-object v6, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@16
    .line 150
    .local v6, "st":Landroid/graphics/drawable/RotateDrawable$RotateState;
    iget-boolean v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@18
    if-eqz v8, :cond_0

    #@1a
    int-to-float v8, v7

    #@1b
    iget v9, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@1d
    mul-float v3, v8, v9

    #@1f
    .line 151
    .local v3, "px":F
    :goto_0
    iget-boolean v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@21
    if-eqz v8, :cond_1

    #@23
    int-to-float v8, v2

    #@24
    iget v9, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@26
    mul-float v4, v8, v9

    #@28
    .line 153
    .local v4, "py":F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@2b
    move-result v5

    #@2c
    .line 154
    .local v5, "saveCount":I
    iget v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    #@2e
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@30
    int-to-float v9, v9

    #@31
    add-float/2addr v9, v3

    #@32
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@34
    int-to-float v10, v10

    #@35
    add-float/2addr v10, v4

    #@36
    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@39
    .line 155
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@3c
    .line 156
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@3f
    .line 144
    return-void

    #@40
    .line 150
    .end local v3    # "px":F
    .end local v4    # "py":F
    .end local v5    # "saveCount":I
    :cond_0
    iget v3, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@42
    .restart local v3    # "px":F
    goto :goto_0

    #@43
    .line 151
    :cond_1
    iget v4, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@45
    .restart local v4    # "py":F
    goto :goto_1
.end method

.method public getFromDegrees()F
    .locals 1

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@4
    return v0
.end method

.method public getPivotX()F
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@4
    return v0
.end method

.method public getPivotY()F
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@4
    return v0
.end method

.method public getToDegrees()F
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@4
    return v0
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
    .line 70
    sget-object v1, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    #@2
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/RotateDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@9
    .line 75
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 76
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@f
    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@12
    .line 69
    return-void
.end method

.method public isPivotXRelative()Z
    .locals 1

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@4
    return v0
.end method

.method public isPivotYRelative()Z
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@4
    return v0
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 3

    #@0
    .prologue
    .line 323
    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@a
    .line 324
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@c
    return-object v0
.end method

.method protected onLevelChange(I)Z
    .locals 4
    .param p1, "level"    # I

    #@0
    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    #@3
    .line 313
    int-to-float v2, p1

    #@4
    const v3, 0x461c4000    # 10000.0f

    #@7
    div-float v1, v2, v3

    #@9
    .line 314
    .local v1, "value":F
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@b
    iget v2, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@d
    iget-object v3, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@f
    iget v3, v3, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@11
    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    #@14
    move-result v0

    #@15
    .line 315
    .local v0, "degrees":F
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@17
    iput v0, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    #@19
    .line 317
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@1c
    .line 318
    const/4 v2, 0x1

    #@1d
    return v2
.end method

.method public setFromDegrees(F)V
    .locals 1
    .param p1, "fromDegrees"    # F

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@4
    cmpl-float v0, v0, p1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@a
    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@c
    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@f
    .line 166
    :cond_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .param p1, "pivotX"    # F

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@4
    cmpl-float v0, v0, p1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 219
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@a
    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@c
    .line 220
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@f
    .line 217
    :cond_0
    return-void
.end method

.method public setPivotXRelative(Z)V
    .locals 1
    .param p1, "relative"    # Z

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 243
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@a
    .line 244
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@d
    .line 241
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1
    .param p1, "pivotY"    # F

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@4
    cmpl-float v0, v0, p1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 271
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@a
    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@c
    .line 272
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@f
    .line 269
    :cond_0
    return-void
.end method

.method public setPivotYRelative(Z)V
    .locals 1
    .param p1, "relative"    # Z

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 295
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@a
    .line 296
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@d
    .line 293
    :cond_0
    return-void
.end method

.method public setToDegrees(F)V
    .locals 1
    .param p1, "toDegrees"    # F

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@4
    cmpl-float v0, v0, p1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@a
    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@c
    .line 192
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@f
    .line 189
    :cond_0
    return-void
.end method
