.class public Landroid/graphics/drawable/AnimationDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "AnimationDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

.field private mCurFrame:I

.field private mMutated:Z

.field private mRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 102
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    #@4
    .line 101
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 433
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    #@4
    .line 91
    iput v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    #@6
    .line 434
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@8
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    #@b
    .line 435
    .local v0, "as":Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@e
    .line 436
    if-eqz p1, :cond_0

    #@10
    .line 437
    const/4 v1, 0x1

    #@11
    invoke-direct {p0, v2, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    #@14
    .line 433
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

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
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 303
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v6

    #@7
    add-int/lit8 v4, v6, 0x1

    #@9
    .line 305
    .local v4, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@c
    move-result v5

    #@d
    .local v5, "type":I
    if-eq v5, v9, :cond_6

    #@f
    .line 306
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v1

    #@13
    .local v1, "depth":I
    if-ge v1, v4, :cond_1

    #@15
    const/4 v6, 0x3

    #@16
    if-eq v5, v6, :cond_6

    #@18
    .line 307
    :cond_1
    if-ne v5, v10, :cond_0

    #@1a
    .line 311
    if-gt v1, v4, :cond_0

    #@1c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    const-string/jumbo v7, "item"

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_0

    #@29
    .line 316
    sget-object v6, Lcom/android/internal/R$styleable;->AnimationDrawableItem:[I

    #@2b
    .line 315
    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/AnimationDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2e
    move-result-object v0

    #@2f
    .line 318
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, -0x1

    #@30
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@33
    move-result v3

    #@34
    .line 319
    .local v3, "duration":I
    if-gez v3, :cond_2

    #@36
    .line 320
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@38
    new-instance v7, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    .line 321
    const-string/jumbo v8, ": <item> tag requires a \'duration\' attribute"

    #@48
    .line 320
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@53
    throw v6

    #@54
    .line 324
    :cond_2
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@57
    move-result-object v2

    #@58
    .line 326
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@5b
    .line 328
    if-nez v2, :cond_5

    #@5d
    .line 329
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@60
    move-result v5

    #@61
    const/4 v6, 0x4

    #@62
    if-eq v5, v6, :cond_3

    #@64
    .line 332
    if-eq v5, v10, :cond_4

    #@66
    .line 333
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@68
    new-instance v7, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    .line 334
    const-string/jumbo v8, ": <item> tag requires a \'drawable\' attribute or child tag"

    #@78
    .line 333
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    .line 335
    const-string/jumbo v8, " defining a drawable"

    #@7f
    .line 333
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v6

    #@8b
    .line 337
    :cond_4
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@8e
    move-result-object v2

    #@8f
    .line 340
    :cond_5
    iget-object v6, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@91
    invoke-virtual {v6, v2, v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    #@94
    .line 341
    if-eqz v2, :cond_0

    #@96
    .line 342
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@99
    goto/16 :goto_0

    #@9b
    .line 300
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "depth":I
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "duration":I
    :cond_6
    return-void
.end method

.method private nextFrame(Z)V
    .locals 4
    .param p1, "unschedule"    # Z

    #@0
    .prologue
    .line 256
    iget v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    #@2
    add-int/lit8 v1, v3, 0x1

    #@4
    .line 257
    .local v1, "nextFrame":I
    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@6
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    #@9
    move-result v2

    #@a
    .line 258
    .local v2, "numFrames":I
    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@c
    invoke-static {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    add-int/lit8 v3, v2, -0x1

    #@14
    if-lt v1, v3, :cond_1

    #@16
    const/4 v0, 0x1

    #@17
    .line 261
    .local v0, "isLastFrame":Z
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@19
    invoke-static {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_0

    #@1f
    if-lt v1, v2, :cond_0

    #@21
    .line 262
    const/4 v1, 0x0

    #@22
    .line 265
    :cond_0
    if-eqz v0, :cond_2

    #@24
    const/4 v3, 0x0

    #@25
    :goto_1
    invoke-direct {p0, v1, p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    #@28
    .line 255
    return-void

    #@29
    .line 258
    .end local v0    # "isLastFrame":Z
    :cond_1
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "isLastFrame":Z
    goto :goto_0

    #@2b
    .line 265
    :cond_2
    const/4 v3, 0x1

    #@2c
    goto :goto_1
.end method

.method private setFrame(IZZ)V
    .locals 4
    .param p1, "frame"    # I
    .param p2, "unschedule"    # Z
    .param p3, "animate"    # Z

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_0

    #@8
    .line 270
    return-void

    #@9
    .line 272
    :cond_0
    iput-boolean p3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    #@b
    .line 273
    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    #@d
    .line 274
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    #@10
    .line 275
    if-nez p2, :cond_1

    #@12
    if-eqz p3, :cond_2

    #@14
    .line 276
    :cond_1
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@17
    .line 278
    :cond_2
    if-eqz p3, :cond_3

    #@19
    .line 280
    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    #@1b
    .line 281
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    #@1e
    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@21
    move-result-wide v0

    #@22
    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@24
    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    #@27
    move-result-object v2

    #@28
    aget v2, v2, p1

    #@2a
    int-to-long v2, v2

    #@2b
    add-long/2addr v0, v2

    #@2c
    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    #@2f
    .line 268
    :cond_3
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@2
    .line 349
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@4
    iget-boolean v1, v1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mVariablePadding:Z

    #@6
    const/4 v2, 0x1

    #@7
    .line 348
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a
    move-result v1

    #@b
    iput-boolean v1, v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mVariablePadding:Z

    #@d
    .line 351
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@f
    .line 352
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@11
    invoke-static {v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    #@14
    move-result v1

    #@15
    const/4 v2, 0x2

    #@16
    .line 351
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@19
    move-result v1

    #@1a
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-set0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    #@1d
    .line 347
    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "frame"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 249
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    #@6
    .line 250
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    #@8
    if-nez v0, :cond_0

    #@a
    .line 251
    const/4 v0, 0x1

    #@b
    invoke-direct {p0, v1, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    #@e
    .line 248
    :cond_0
    return-void
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 374
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    #@3
    .line 375
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    #@6
    .line 373
    return-void
.end method

.method cloneConstantState()Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .locals 3

    #@0
    .prologue
    .line 367
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    #@8
    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    #@0
    .prologue
    .line 366
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->cloneConstantState()Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDuration(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@2
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    #@5
    move-result-object v0

    #@6
    aget v0, v0, p1

    #@8
    return v0
.end method

.method public getFrame(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChild(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
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
    const/4 v2, 0x0

    #@1
    .line 289
    sget-object v1, Lcom/android/internal/R$styleable;->AnimationDrawable:[I

    #@3
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/AnimationDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6
    move-result-object v0

    #@7
    .line 290
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, v0, v2}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    #@a
    .line 291
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@d
    .line 292
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@10
    .line 294
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimationDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@13
    .line 296
    const/4 v1, 0x1

    #@14
    invoke-direct {p0, v2, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    #@17
    .line 288
    return-void
.end method

.method public isOneShot()Z
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@2
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 183
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    #@2
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 359
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@c
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-wrap0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)V

    #@f
    .line 360
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    #@12
    .line 362
    :cond_0
    return-object p0
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 194
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->nextFrame(Z)V

    #@4
    .line 193
    return-void
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@0
    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@3
    .line 428
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 429
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@9
    .end local p1    # "state":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    iput-object p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@b
    .line 425
    :cond_0
    return-void
.end method

.method public setOneShot(Z)V
    .locals 1
    .param p1, "oneShot"    # Z

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@2
    invoke-static {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-set0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    #@5
    .line 238
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer;->setVisible(ZZ)Z

    #@3
    move-result v0

    #@4
    .line 121
    .local v0, "changed":Z
    if-eqz p1, :cond_5

    #@6
    .line 122
    if-nez p2, :cond_0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 123
    :cond_0
    if-nez p2, :cond_2

    #@c
    iget-boolean v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    #@e
    if-eqz v2, :cond_2

    #@10
    .line 124
    iget v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    #@12
    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@14
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    #@17
    move-result v3

    #@18
    if-lt v2, v3, :cond_3

    #@1a
    const/4 v1, 0x1

    #@1b
    .line 125
    .local v1, "startFromZero":Z
    :goto_0
    if-eqz v1, :cond_4

    #@1d
    const/4 v2, 0x0

    #@1e
    :goto_1
    iget-boolean v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    #@20
    const/4 v4, 0x1

    #@21
    invoke-direct {p0, v2, v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    #@24
    .line 130
    .end local v1    # "startFromZero":Z
    :cond_1
    :goto_2
    return v0

    #@25
    .line 123
    :cond_2
    const/4 v1, 0x1

    #@26
    .restart local v1    # "startFromZero":Z
    goto :goto_0

    #@27
    .line 124
    .end local v1    # "startFromZero":Z
    :cond_3
    const/4 v1, 0x0

    #@28
    .restart local v1    # "startFromZero":Z
    goto :goto_0

    #@29
    .line 125
    :cond_4
    iget v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    #@2b
    goto :goto_1

    #@2c
    .line 128
    .end local v1    # "startFromZero":Z
    :cond_5
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@2f
    goto :goto_2
.end method

.method public start()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 151
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    #@4
    .line 153
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    .line 155
    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@c
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    #@f
    move-result v2

    #@10
    if-gt v2, v0, :cond_0

    #@12
    .line 156
    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    #@14
    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    move v0, v1

    #@1b
    .line 155
    :cond_0
    invoke-direct {p0, v1, v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    #@1e
    .line 150
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 169
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    #@3
    .line 171
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 172
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@c
    .line 168
    :cond_0
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 199
    iput v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    #@3
    .line 200
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    #@5
    .line 201
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@8
    .line 198
    return-void
.end method
