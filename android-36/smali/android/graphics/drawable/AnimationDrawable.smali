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
.field private greylist-max-o mAnimating:Z

.field private greylist-max-o mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

.field private greylist mCurFrame:I

.field private greylist-max-o mMutated:Z

.field private greylist-max-o mRunning:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    .line 105
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "state"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 457
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    .line 458
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-direct {v1, p1, p0, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    .line 459
    .local v1, "as":Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 460
    if-eqz p1, :cond_14

    .line 461
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .line 463
    :cond_14
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 15
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

    .line 308
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 310
    .local v0, "innerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_97

    .line 311
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_17

    const/4 v2, 0x3

    if-eq v3, v2, :cond_97

    .line 312
    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    .line 313
    goto :goto_6

    .line 316
    :cond_1b
    if-gt v4, v0, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 317
    goto :goto_6

    .line 320
    :cond_2b
    sget-object v5, Lcom/android/internal/R$styleable;->AnimationDrawableItem:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/AnimationDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 323
    .local v5, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 324
    .local v6, "duration":I
    if-ltz v6, :cond_7a

    .line 329
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 331
    .local v7, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 333
    if-nez v7, :cond_6f

    .line 334
    :goto_42
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v3, v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4b

    goto :goto_42

    .line 337
    :cond_4b
    if-ne v3, v2, :cond_52

    .line 342
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_6f

    .line 338
    :cond_52
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_6f
    :goto_6f
    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v2, v7, v6}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 346
    if-eqz v7, :cond_79

    .line 347
    invoke-virtual {v7, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 349
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "duration":I
    .end local v7    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_79
    goto :goto_6

    .line 325
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v6    # "duration":I
    :cond_7a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ": <item> tag requires a \'duration\' attribute"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    .end local v4    # "depth":I
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "duration":I
    :cond_97
    return-void
.end method

.method private greylist-max-o nextFrame(Z)V
    .registers 8
    .param p1, "unschedule"    # Z

    .line 260
    iget v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 261
    .local v0, "nextFrame":I
    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v2

    .line 262
    .local v2, "numFrames":I
    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-$$Nest$fgetmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    add-int/lit8 v3, v2, -0x1

    if-lt v0, v3, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v4

    .line 265
    .local v3, "isLastFrame":Z
    :goto_1a
    iget-object v5, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v5}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-$$Nest$fgetmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v5

    if-nez v5, :cond_25

    if-lt v0, v2, :cond_25

    .line 266
    const/4 v0, 0x0

    .line 269
    :cond_25
    if-nez v3, :cond_28

    goto :goto_29

    :cond_28
    move v1, v4

    :goto_29
    invoke-direct {p0, v0, p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .line 270
    return-void
.end method

.method private greylist-max-o setFrame(IZZ)V
    .registers 8
    .param p1, "frame"    # I
    .param p2, "unschedule"    # Z
    .param p3, "animate"    # Z

    .line 273
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    .line 274
    return-void

    .line 276
    :cond_9
    iput-boolean p3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    .line 277
    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    .line 278
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 279
    if-nez p2, :cond_14

    if-eqz p3, :cond_17

    .line 280
    :cond_14
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 282
    :cond_17
    if-eqz p3, :cond_2f

    .line 284
    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-$$Nest$fgetmDurations(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v2

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 288
    :cond_2f
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 353
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-boolean v1, v1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mVariablePadding:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mVariablePadding:Z

    .line 356
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-$$Nest$fgetmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-$$Nest$fputmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)V

    .line 358
    return-void
.end method


# virtual methods
.method public whitelist addFrame(Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I

    .line 253
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 254
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    if-nez v0, :cond_e

    .line 255
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .line 257
    :cond_e
    return-void
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 379
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    .line 381
    return-void
.end method

.method greylist-max-o cloneConstantState()Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .registers 4

    .line 372
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method bridge synthetic blacklist cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .registers 2

    .line 88
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->cloneConstantState()Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDuration(I)I
    .registers 3
    .param p1, "i"    # I

    .line 227
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-$$Nest$fgetmDurations(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getFrame(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "index"    # I

    .line 219
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNumberOfFrames()I
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public blacklist getTotalDuration()J
    .registers 3

    .line 454
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 8
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

    .line 293
    sget-object v0, Lcom/android/internal/R$styleable;->AnimationDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/AnimationDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 294
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 295
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 296
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->updateDensity(Landroid/content/res/Resources;)V

    .line 297
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 299
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimationDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 301
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .line 302
    return-void
.end method

.method public whitelist isOneShot()Z
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-$$Nest$fgetmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v0

    return v0
.end method

.method public whitelist isRunning()Z
    .registers 2

    .line 188
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    return v0
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 363
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    if-nez v0, :cond_12

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_12

    .line 364
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-$$Nest$mmutate(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    .line 367
    :cond_12
    return-object p0
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->nextFrame(Z)V

    .line 200
    return-void
.end method

.method protected whitelist setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 442
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 444
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    if-eqz v0, :cond_c

    .line 445
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    .line 447
    :cond_c
    return-void
.end method

.method public whitelist setOneShot(Z)V
    .registers 3
    .param p1, "oneShot"    # Z

    .line 243
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-$$Nest$fputmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)V

    .line 244
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 8
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 124
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer;->setVisible(ZZ)Z

    move-result v0

    .line 125
    .local v0, "changed":Z
    if-eqz p1, :cond_33

    .line 126
    if-nez p2, :cond_a

    if-eqz v0, :cond_36

    .line 127
    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_27

    iget-boolean v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    if-nez v3, :cond_1a

    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-$$Nest$fgetmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_1a
    iget v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    iget-object v4, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    .line 128
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_25

    goto :goto_27

    :cond_25
    move v3, v1

    goto :goto_28

    :cond_27
    :goto_27
    move v3, v2

    .line 129
    .local v3, "startFromZero":Z
    :goto_28
    if-eqz v3, :cond_2b

    goto :goto_2d

    :cond_2b
    iget v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    :goto_2d
    iget-boolean v4, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    invoke-direct {p0, v1, v2, v4}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .line 130
    .end local v3    # "startFromZero":Z
    goto :goto_36

    .line 132
    :cond_33
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 134
    :cond_36
    :goto_36
    return v0
.end method

.method public whitelist start()V
    .registers 4

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    .line 157
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 159
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, v0, :cond_1c

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-$$Nest$fgetmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v2

    :cond_1c
    :goto_1c
    invoke-direct {p0, v2, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .line 162
    :cond_1f
    return-void
.end method

.method public whitelist stop()V
    .registers 3

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    .line 175
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 176
    iput v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    .line 177
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 179
    :cond_e
    return-void
.end method

.method public whitelist unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "what"    # Ljava/lang/Runnable;

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    .line 205
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method
