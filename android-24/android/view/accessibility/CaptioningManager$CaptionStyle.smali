.class public final Landroid/view/accessibility/CaptioningManager$CaptionStyle;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptionStyle"
.end annotation


# static fields
.field private static final BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final COLOR_NONE_OPAQUE:I = 0xff

.field public static final COLOR_UNSPECIFIED:I = 0xffffff

.field public static final DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final EDGE_TYPE_UNSPECIFIED:I = -0x1

.field public static final PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final PRESET_CUSTOM:I = -0x1

.field private static final UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field private final mHasBackgroundColor:Z

.field private final mHasEdgeColor:Z

.field private final mHasEdgeType:Z

.field private final mHasForegroundColor:Z

.field private final mHasWindowColor:Z

.field private mParsedTypeface:Landroid/graphics/Typeface;

.field public final mRawTypeface:Ljava/lang/String;

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    #@0
    .prologue
    const v14, 0xffffff

    #@3
    const/16 v5, 0xff

    #@5
    const/4 v6, 0x0

    #@6
    const/4 v3, 0x0

    #@7
    const/high16 v2, -0x1000000

    #@9
    .line 502
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@b
    const/4 v1, -0x1

    #@c
    move v4, v2

    #@d
    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    #@10
    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@12
    .line 504
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@14
    const/4 v9, -0x1

    #@15
    move v8, v2

    #@16
    move v10, v3

    #@17
    move v11, v2

    #@18
    move v12, v5

    #@19
    move-object v13, v6

    #@1a
    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    #@1d
    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@1f
    .line 506
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@21
    const/16 v1, -0x100

    #@23
    move v4, v2

    #@24
    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    #@27
    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@29
    .line 508
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2b
    const/16 v8, -0x100

    #@2d
    const v9, -0xffff01

    #@30
    move v10, v3

    #@31
    move v11, v2

    #@32
    move v12, v5

    #@33
    move-object v13, v6

    #@34
    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    #@37
    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@39
    .line 510
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@3b
    .line 511
    const/4 v10, -0x1

    #@3c
    move v8, v14

    #@3d
    move v9, v14

    #@3e
    move v11, v14

    #@3f
    move v12, v14

    #@40
    move-object v13, v6

    #@41
    .line 510
    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    #@44
    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@46
    .line 515
    const/4 v0, 0x5

    #@47
    new-array v0, v0, [Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@49
    .line 516
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@4b
    aput-object v1, v0, v3

    #@4d
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@4f
    const/4 v2, 0x1

    #@50
    aput-object v1, v0, v2

    #@52
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@54
    const/4 v2, 0x2

    #@55
    aput-object v1, v0, v2

    #@57
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@59
    const/4 v2, 0x3

    #@5a
    aput-object v1, v0, v2

    #@5c
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@5e
    const/4 v2, 0x4

    #@5f
    aput-object v1, v0, v2

    #@61
    .line 515
    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@63
    .line 519
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@65
    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@67
    .line 520
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@69
    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@6b
    .line 268
    return-void
.end method

.method private constructor <init>(IIIIILjava/lang/String;)V
    .locals 4
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "edgeType"    # I
    .param p4, "edgeColor"    # I
    .param p5, "windowColor"    # I
    .param p6, "rawTypeface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    const/high16 v3, -0x1000000

    #@4
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 361
    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    #@a
    move-result v0

    #@b
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    #@d
    .line 362
    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    #@10
    move-result v0

    #@11
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    #@13
    .line 363
    if-eq p3, v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :goto_0
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    #@18
    .line 364
    invoke-static {p4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    #@1b
    move-result v0

    #@1c
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    #@1e
    .line 365
    invoke-static {p5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    #@21
    move-result v0

    #@22
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    #@24
    .line 369
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    #@26
    if-eqz v0, :cond_1

    #@28
    .end local p1    # "foregroundColor":I
    :goto_1
    iput p1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@2a
    .line 370
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .end local p2    # "backgroundColor":I
    :goto_2
    iput p2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@30
    .line 371
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    #@32
    if-eqz v0, :cond_3

    #@34
    .end local p3    # "edgeType":I
    :goto_3
    iput p3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    #@36
    .line 372
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    #@38
    if-eqz v0, :cond_4

    #@3a
    .end local p4    # "edgeColor":I
    :goto_4
    iput p4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    #@3c
    .line 373
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    #@3e
    if-eqz v0, :cond_5

    #@40
    .end local p5    # "windowColor":I
    :goto_5
    iput p5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    #@42
    .line 375
    iput-object p6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    #@44
    .line 360
    return-void

    #@45
    .restart local p1    # "foregroundColor":I
    .restart local p2    # "backgroundColor":I
    .restart local p3    # "edgeType":I
    .restart local p4    # "edgeColor":I
    .restart local p5    # "windowColor":I
    :cond_0
    move v0, v1

    #@46
    .line 363
    goto :goto_0

    #@47
    :cond_1
    move p1, v2

    #@48
    .line 369
    goto :goto_1

    #@49
    .end local p1    # "foregroundColor":I
    :cond_2
    move p2, v3

    #@4a
    .line 370
    goto :goto_2

    #@4b
    .end local p2    # "backgroundColor":I
    :cond_3
    move p3, v1

    #@4c
    .line 371
    goto :goto_3

    #@4d
    .end local p3    # "edgeType":I
    :cond_4
    move p4, v3

    #@4e
    .line 372
    goto :goto_4

    #@4f
    .line 373
    .end local p4    # "edgeColor":I
    :cond_5
    const/16 p5, 0xff

    #@51
    goto :goto_5
.end method

.method public static getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 480
    sget-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2
    .line 482
    .local v7, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    const-string/jumbo v0, "accessibility_captioning_foreground_color"

    #@5
    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@7
    .line 481
    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v1

    #@b
    .line 484
    .local v1, "foregroundColor":I
    const-string/jumbo v0, "accessibility_captioning_background_color"

    #@e
    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@10
    .line 483
    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@13
    move-result v2

    #@14
    .line 486
    .local v2, "backgroundColor":I
    const-string/jumbo v0, "accessibility_captioning_edge_type"

    #@17
    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    #@19
    .line 485
    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1c
    move-result v3

    #@1d
    .line 488
    .local v3, "edgeType":I
    const-string/jumbo v0, "accessibility_captioning_edge_color"

    #@20
    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    #@22
    .line 487
    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@25
    move-result v4

    #@26
    .line 490
    .local v4, "edgeColor":I
    const-string/jumbo v0, "accessibility_captioning_window_color"

    #@29
    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    #@2b
    .line 489
    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@2e
    move-result v5

    #@2f
    .line 492
    .local v5, "windowColor":I
    const-string/jumbo v0, "accessibility_captioning_typeface"

    #@32
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    .line 493
    .local v6, "rawTypeface":Ljava/lang/String;
    if-nez v6, :cond_0

    #@38
    .line 494
    iget-object v6, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    #@3a
    .line 497
    :cond_0
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@3c
    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    #@3f
    return-object v0
.end method

.method public static hasColor(I)Z
    .locals 3
    .param p0, "packedColor"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 389
    ushr-int/lit8 v2, p0, 0x18

    #@4
    if-nez v2, :cond_0

    #@6
    const v2, 0xffff00

    #@9
    and-int/2addr v2, p0

    #@a
    if-nez v2, :cond_1

    #@c
    :cond_0
    :goto_0
    return v0

    #@d
    :cond_1
    move v0, v1

    #@e
    goto :goto_0
.end method


# virtual methods
.method public applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 7
    .param p1, "overlay"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@0
    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 403
    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@8
    .line 404
    .local v1, "newForegroundColor":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 405
    iget v2, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@10
    .line 406
    .local v2, "newBackgroundColor":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 407
    iget v3, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    #@18
    .line 408
    .local v3, "newEdgeType":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_3

    #@1e
    .line 409
    iget v4, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    #@20
    .line 410
    .local v4, "newEdgeColor":I
    :goto_3
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_4

    #@26
    .line 411
    iget v5, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    #@28
    .line 412
    .local v5, "newWindowColor":I
    :goto_4
    iget-object v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_5

    #@2c
    .line 413
    iget-object v6, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    #@2e
    .line 414
    .local v6, "newRawTypeface":Ljava/lang/String;
    :goto_5
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@30
    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    #@33
    return-object v0

    #@34
    .line 403
    .end local v1    # "newForegroundColor":I
    .end local v2    # "newBackgroundColor":I
    .end local v3    # "newEdgeType":I
    .end local v4    # "newEdgeColor":I
    .end local v5    # "newWindowColor":I
    .end local v6    # "newRawTypeface":Ljava/lang/String;
    :cond_0
    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@36
    .restart local v1    # "newForegroundColor":I
    goto :goto_0

    #@37
    .line 405
    :cond_1
    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@39
    .restart local v2    # "newBackgroundColor":I
    goto :goto_1

    #@3a
    .line 407
    :cond_2
    iget v3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    #@3c
    .restart local v3    # "newEdgeType":I
    goto :goto_2

    #@3d
    .line 409
    :cond_3
    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    #@3f
    .restart local v4    # "newEdgeColor":I
    goto :goto_3

    #@40
    .line 411
    :cond_4
    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    #@42
    .restart local v5    # "newWindowColor":I
    goto :goto_4

    #@43
    .line 413
    :cond_5
    iget-object v6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    #@45
    .restart local v6    # "newRawTypeface":Ljava/lang/String;
    goto :goto_5
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    #@0
    .prologue
    .line 469
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    #@6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 472
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    #@e
    return-object v0

    #@f
    .line 470
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    #@18
    goto :goto_0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    #@0
    .prologue
    .line 424
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    #@2
    return v0
.end method

.method public hasEdgeColor()Z
    .locals 1

    #@0
    .prologue
    .line 451
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    #@2
    return v0
.end method

.method public hasEdgeType()Z
    .locals 1

    #@0
    .prologue
    .line 442
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    #@2
    return v0
.end method

.method public hasForegroundColor()Z
    .locals 1

    #@0
    .prologue
    .line 433
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    #@2
    return v0
.end method

.method public hasWindowColor()Z
    .locals 1

    #@0
    .prologue
    .line 460
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    #@2
    return v0
.end method
