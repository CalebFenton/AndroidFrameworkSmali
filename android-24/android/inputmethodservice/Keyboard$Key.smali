.class public Landroid/inputmethodservice/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field private keyboard:Landroid/inputmethodservice/Keyboard;

.field public label:Ljava/lang/CharSequence;

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const v5, 0x10100a0

    #@3
    const/4 v4, 0x1

    #@4
    const v3, 0x10100a7

    #@7
    const/4 v2, 0x0

    #@8
    const v1, 0x101009f

    #@b
    .line 286
    filled-new-array {v1, v5}, [I

    #@e
    move-result-object v0

    #@f
    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    #@11
    .line 291
    filled-new-array {v3, v1, v5}, [I

    #@14
    move-result-object v0

    #@15
    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    #@17
    .line 297
    new-array v0, v4, [I

    #@19
    .line 298
    aput v1, v0, v2

    #@1b
    .line 297
    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    #@1d
    .line 301
    filled-new-array {v3, v1}, [I

    #@20
    move-result-object v0

    #@21
    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    #@23
    .line 306
    new-array v0, v2, [I

    #@25
    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    #@27
    .line 309
    new-array v0, v4, [I

    #@29
    .line 310
    aput v3, v0, v2

    #@2b
    .line 309
    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    #@2d
    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 332
    invoke-direct {p0, p2}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    #@7
    .line 334
    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@9
    .line 335
    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@b
    .line 337
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@e
    move-result-object v2

    #@f
    .line 338
    sget-object v3, Lcom/android/internal/R$styleable;->Keyboard:[I

    #@11
    .line 337
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@14
    move-result-object v0

    #@15
    .line 342
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    #@17
    invoke-static {v2}, Landroid/inputmethodservice/Keyboard;->-get5(Landroid/inputmethodservice/Keyboard;)I

    #@1a
    move-result v2

    #@1b
    iget v3, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    #@1d
    .line 340
    invoke-static {v0, v5, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    #@20
    move-result v2

    #@21
    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@23
    .line 345
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    #@25
    invoke-static {v2}, Landroid/inputmethodservice/Keyboard;->-get4(Landroid/inputmethodservice/Keyboard;)I

    #@28
    move-result v2

    #@29
    iget v3, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    #@2b
    .line 343
    invoke-static {v0, v6, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    #@2e
    move-result v2

    #@2f
    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@31
    .line 348
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    #@33
    invoke-static {v2}, Landroid/inputmethodservice/Keyboard;->-get5(Landroid/inputmethodservice/Keyboard;)I

    #@36
    move-result v2

    #@37
    iget v3, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    #@39
    .line 346
    invoke-static {v0, v7, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    #@3c
    move-result v2

    #@3d
    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    #@3f
    .line 349
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@42
    .line 350
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@45
    move-result-object v2

    #@46
    .line 351
    sget-object v3, Lcom/android/internal/R$styleable;->Keyboard_Key:[I

    #@48
    .line 350
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@4b
    move-result-object v0

    #@4c
    .line 352
    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@4e
    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    #@50
    add-int/2addr v2, v3

    #@51
    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@53
    .line 353
    new-instance v1, Landroid/util/TypedValue;

    #@55
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@58
    .line 354
    .local v1, "codesValue":Landroid/util/TypedValue;
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@5b
    .line 356
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@5d
    const/16 v3, 0x10

    #@5f
    if-eq v2, v3, :cond_0

    #@61
    .line 357
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@63
    const/16 v3, 0x11

    #@65
    if-ne v2, v3, :cond_5

    #@67
    .line 358
    :cond_0
    new-array v2, v6, [I

    #@69
    iget v3, v1, Landroid/util/TypedValue;->data:I

    #@6b
    aput v3, v2, v5

    #@6d
    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@6f
    .line 363
    :cond_1
    :goto_0
    const/4 v2, 0x7

    #@70
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@73
    move-result-object v2

    #@74
    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@76
    .line 364
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@78
    if-eqz v2, :cond_2

    #@7a
    .line 365
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@7c
    iget-object v3, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@7e
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@81
    move-result v3

    #@82
    .line 366
    iget-object v4, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@84
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@87
    move-result v4

    #@88
    .line 365
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@8b
    .line 368
    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@8e
    move-result-object v2

    #@8f
    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    #@91
    .line 370
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@94
    move-result v2

    #@95
    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    #@97
    .line 373
    const/4 v2, 0x6

    #@98
    .line 372
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@9b
    move-result v2

    #@9c
    iput-boolean v2, p0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    #@9e
    .line 375
    const/4 v2, 0x4

    #@9f
    .line 374
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a2
    move-result v2

    #@a3
    iput-boolean v2, p0, Landroid/inputmethodservice/Keyboard$Key;->modifier:Z

    #@a5
    .line 377
    const/4 v2, 0x5

    #@a6
    .line 376
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a9
    move-result v2

    #@aa
    iput-boolean v2, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    #@ac
    .line 378
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@af
    move-result v2

    #@b0
    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    #@b2
    .line 379
    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    #@b4
    iget v3, p2, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    #@b6
    or-int/2addr v2, v3

    #@b7
    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    #@b9
    .line 382
    const/16 v2, 0xa

    #@bb
    .line 381
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@be
    move-result-object v2

    #@bf
    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@c1
    .line 383
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@c3
    if-eqz v2, :cond_3

    #@c5
    .line 384
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@c7
    iget-object v3, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@c9
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@cc
    move-result v3

    #@cd
    iget-object v4, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@cf
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@d2
    move-result v4

    #@d3
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@d6
    .line 386
    :cond_3
    const/16 v2, 0x9

    #@d8
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@db
    move-result-object v2

    #@dc
    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    #@de
    .line 387
    const/16 v2, 0x8

    #@e0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@e3
    move-result-object v2

    #@e4
    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    #@e6
    .line 389
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@e8
    if-nez v2, :cond_4

    #@ea
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    #@ec
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ef
    move-result v2

    #@f0
    if-eqz v2, :cond_6

    #@f2
    .line 392
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@f5
    .line 331
    return-void

    #@f6
    .line 359
    :cond_5
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@f8
    if-ne v2, v8, :cond_1

    #@fa
    .line 360
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@fc
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@ff
    move-result-object v2

    #@100
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    #@103
    move-result-object v2

    #@104
    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@106
    goto/16 :goto_0

    #@108
    .line 390
    :cond_6
    new-array v2, v6, [I

    #@10a
    iget-object v3, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    #@10c
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@10f
    move-result v3

    #@110
    aput v3, v2, v5

    #@112
    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@114
    goto :goto_1
.end method

.method public constructor <init>(Landroid/inputmethodservice/Keyboard$Row;)V
    .locals 1
    .param p1, "parent"    # Landroid/inputmethodservice/Keyboard$Row;

    #@0
    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 315
    invoke-static {p1}, Landroid/inputmethodservice/Keyboard$Row;->-get0(Landroid/inputmethodservice/Keyboard$Row;)Landroid/inputmethodservice/Keyboard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    #@9
    .line 316
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    #@b
    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@d
    .line 317
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    #@f
    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@11
    .line 318
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    #@13
    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    #@15
    .line 319
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    #@17
    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    #@19
    .line 314
    return-void
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 2

    #@0
    .prologue
    .line 491
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    #@2
    .line 493
    .local v0, "states":[I
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 494
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 495
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    #@c
    .line 512
    :cond_0
    :goto_0
    return-object v0

    #@d
    .line 497
    :cond_1
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    #@f
    goto :goto_0

    #@10
    .line 500
    :cond_2
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    #@12
    if-eqz v1, :cond_4

    #@14
    .line 501
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    #@16
    if-eqz v1, :cond_3

    #@18
    .line 502
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    #@1a
    goto :goto_0

    #@1b
    .line 504
    :cond_3
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    #@1d
    goto :goto_0

    #@1e
    .line 507
    :cond_4
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 508
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    #@24
    goto :goto_0
.end method

.method public isInside(II)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 459
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    #@3
    and-int/lit8 v4, v4, 0x1

    #@5
    if-lez v4, :cond_4

    #@7
    const/4 v1, 0x1

    #@8
    .line 460
    .local v1, "leftEdge":Z
    :goto_0
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    #@a
    and-int/lit8 v4, v4, 0x2

    #@c
    if-lez v4, :cond_5

    #@e
    const/4 v2, 0x1

    #@f
    .line 461
    .local v2, "rightEdge":Z
    :goto_1
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    #@11
    and-int/lit8 v4, v4, 0x4

    #@13
    if-lez v4, :cond_6

    #@15
    const/4 v3, 0x1

    #@16
    .line 462
    .local v3, "topEdge":Z
    :goto_2
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    #@18
    and-int/lit8 v4, v4, 0x8

    #@1a
    if-lez v4, :cond_7

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 463
    .local v0, "bottomEdge":Z
    :goto_3
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@1f
    if-ge p1, v4, :cond_0

    #@21
    if-eqz v1, :cond_8

    #@23
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@25
    iget v5, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@27
    add-int/2addr v4, v5

    #@28
    if-gt p1, v4, :cond_8

    #@2a
    .line 464
    :cond_0
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@2c
    iget v5, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@2e
    add-int/2addr v4, v5

    #@2f
    if-lt p1, v4, :cond_1

    #@31
    if-eqz v2, :cond_8

    #@33
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@35
    if-lt p1, v4, :cond_8

    #@37
    .line 465
    :cond_1
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@39
    if-ge p2, v4, :cond_2

    #@3b
    if-eqz v3, :cond_8

    #@3d
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@3f
    iget v5, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@41
    add-int/2addr v4, v5

    #@42
    if-gt p2, v4, :cond_8

    #@44
    .line 466
    :cond_2
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@46
    iget v5, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@48
    add-int/2addr v4, v5

    #@49
    if-lt p2, v4, :cond_3

    #@4b
    if-eqz v0, :cond_8

    #@4d
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@4f
    if-lt p2, v4, :cond_8

    #@51
    .line 467
    :cond_3
    const/4 v4, 0x1

    #@52
    return v4

    #@53
    .line 459
    .end local v0    # "bottomEdge":Z
    .end local v1    # "leftEdge":Z
    .end local v2    # "rightEdge":Z
    .end local v3    # "topEdge":Z
    :cond_4
    const/4 v1, 0x0

    #@54
    .restart local v1    # "leftEdge":Z
    goto :goto_0

    #@55
    .line 460
    :cond_5
    const/4 v2, 0x0

    #@56
    .restart local v2    # "rightEdge":Z
    goto :goto_1

    #@57
    .line 461
    :cond_6
    const/4 v3, 0x0

    #@58
    .restart local v3    # "topEdge":Z
    goto :goto_2

    #@59
    .line 462
    :cond_7
    const/4 v0, 0x0

    #@5a
    .restart local v0    # "bottomEdge":Z
    goto :goto_3

    #@5b
    .line 469
    :cond_8
    return v6
.end method

.method public onPressed()V
    .locals 1

    #@0
    .prologue
    .line 401
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    #@7
    .line 400
    return-void

    #@8
    .line 401
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public onReleased(Z)V
    .locals 3
    .param p1, "inside"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 422
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    move v0, v1

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    #@9
    .line 423
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    if-eqz p1, :cond_0

    #@f
    .line 424
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    #@11
    if-eqz v0, :cond_2

    #@13
    :goto_1
    iput-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    #@15
    .line 421
    :cond_0
    return-void

    #@16
    :cond_1
    move v0, v2

    #@17
    .line 422
    goto :goto_0

    #@18
    :cond_2
    move v1, v2

    #@19
    .line 424
    goto :goto_1
.end method

.method parseCSV(Ljava/lang/String;)[I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 429
    const/4 v0, 0x0

    #@1
    .line 430
    .local v0, "count":I
    const/4 v2, 0x0

    #@2
    .line 431
    .local v2, "lastIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v6

    #@6
    if-lez v6, :cond_0

    #@8
    .line 432
    const/4 v0, 0x1

    #@9
    .line 433
    :goto_0
    const-string/jumbo v6, ","

    #@c
    add-int/lit8 v7, v2, 0x1

    #@e
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@11
    move-result v2

    #@12
    if-lez v2, :cond_0

    #@14
    .line 434
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 437
    :cond_0
    new-array v5, v0, [I

    #@19
    .line 438
    .local v5, "values":[I
    const/4 v0, 0x0

    #@1a
    .line 439
    new-instance v4, Ljava/util/StringTokenizer;

    #@1c
    const-string/jumbo v6, ","

    #@1f
    invoke-direct {v4, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 440
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_1

    #@28
    .line 442
    add-int/lit8 v1, v0, 0x1

    #@2a
    .end local v0    # "count":I
    .local v1, "count":I
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@31
    move-result v6

    #@32
    aput v6, v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    :goto_2
    move v0, v1

    #@35
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    #@36
    .line 443
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :catch_0
    move-exception v3

    #@37
    .line 444
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "Keyboard"

    #@3a
    new-instance v7, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v8, "Error parsing keycodes "

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    goto :goto_2

    #@52
    .line 447
    .end local v1    # "count":I
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "count":I
    :cond_1
    return-object v5
.end method

.method public squaredDistanceFrom(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 480
    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@2
    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@4
    div-int/lit8 v3, v3, 0x2

    #@6
    add-int/2addr v2, v3

    #@7
    sub-int v0, v2, p1

    #@9
    .line 481
    .local v0, "xDist":I
    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@b
    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@d
    div-int/lit8 v3, v3, 0x2

    #@f
    add-int/2addr v2, v3

    #@10
    sub-int v1, v2, p2

    #@12
    .line 482
    .local v1, "yDist":I
    mul-int v2, v0, v0

    #@14
    mul-int v3, v1, v1

    #@16
    add-int/2addr v2, v3

    #@17
    return v2
.end method
