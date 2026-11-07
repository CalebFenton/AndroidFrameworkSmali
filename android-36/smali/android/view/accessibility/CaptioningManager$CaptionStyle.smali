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
.field private static final greylist-max-o BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final greylist-max-o COLOR_NONE_OPAQUE:I = 0xff

.field public static final greylist-max-o COLOR_UNSPECIFIED:I = 0xffffff

.field public static final greylist-max-o DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final greylist-max-o DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final whitelist EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final whitelist EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final whitelist EDGE_TYPE_NONE:I = 0x0

.field public static final whitelist EDGE_TYPE_OUTLINE:I = 0x1

.field public static final whitelist EDGE_TYPE_RAISED:I = 0x3

.field public static final whitelist EDGE_TYPE_UNSPECIFIED:I = -0x1

.field public static final greylist PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final greylist-max-o PRESET_CUSTOM:I = -0x1

.field private static final greylist-max-o UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final greylist-max-o WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final greylist-max-o YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final greylist-max-o YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# instance fields
.field public final whitelist backgroundColor:I

.field public final whitelist edgeColor:I

.field public final whitelist edgeType:I

.field public final whitelist foregroundColor:I

.field private final greylist-max-o mHasBackgroundColor:Z

.field private final greylist-max-o mHasEdgeColor:Z

.field private final greylist-max-o mHasEdgeType:Z

.field private final greylist-max-o mHasForegroundColor:Z

.field private final greylist-max-o mHasWindowColor:Z

.field private greylist-max-o mParsedTypeface:Landroid/graphics/Typeface;

.field public final greylist-max-o mRawTypeface:Ljava/lang/String;

.field public final whitelist windowColor:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 603
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 605
    new-instance v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, -0x1000000

    invoke-direct/range {v1 .. v7}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 607
    new-instance v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/16 v3, -0x100

    const/high16 v4, -0x1000000

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    invoke-direct/range {v2 .. v8}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 609
    new-instance v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/16 v4, -0x100

    const v5, -0xffff01

    const/4 v6, 0x0

    const/high16 v7, -0x1000000

    invoke-direct/range {v3 .. v9}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 611
    new-instance v4, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const v9, 0xffffff

    const/4 v10, 0x0

    const v5, 0xffffff

    const v6, 0xffffff

    const/4 v7, -0x1

    const v8, 0xffffff

    invoke-direct/range {v4 .. v10}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v4, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 616
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sget-object v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sget-object v4, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 620
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 621
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 622
    return-void
.end method

.method private constructor greylist-max-o <init>(IIIIILjava/lang/String;)V
    .registers 10
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "edgeType"    # I
    .param p4, "edgeColor"    # I
    .param p5, "windowColor"    # I
    .param p6, "rawTypeface"    # Ljava/lang/String;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    .line 463
    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    .line 464
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p3, v1, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    move v2, v0

    :goto_16
    iput-boolean v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    .line 465
    invoke-static {p4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    .line 466
    invoke-static {p5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    .line 470
    iget-boolean v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    if-eqz v2, :cond_29

    move v1, p1

    :cond_29
    iput v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 471
    iget-boolean v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    const/high16 v2, -0x1000000

    if-eqz v1, :cond_33

    move v1, p2

    goto :goto_34

    :cond_33
    move v1, v2

    :goto_34
    iput v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 472
    iget-boolean v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    if-eqz v1, :cond_3b

    move v0, p3

    :cond_3b
    iput v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 473
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    if-eqz v0, :cond_42

    move v2, p4

    :cond_42
    iput v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 474
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    if-eqz v0, :cond_4a

    move v0, p5

    goto :goto_4c

    :cond_4a
    const/16 v0, 0xff

    :goto_4c
    iput v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 476
    iput-object p6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public static greylist-max-o getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 581
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 582
    .local v0, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    const-string v1, "accessibility_captioning_foreground_color"

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 584
    .local v4, "foregroundColor":I
    const-string v1, "accessibility_captioning_background_color"

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 586
    .local v5, "backgroundColor":I
    const-string v1, "accessibility_captioning_edge_type"

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 588
    .local v6, "edgeType":I
    const-string v1, "accessibility_captioning_edge_color"

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 590
    .local v7, "edgeColor":I
    const-string v1, "accessibility_captioning_window_color"

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 593
    .local v8, "windowColor":I
    const-string v1, "accessibility_captioning_typeface"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "rawTypeface":Ljava/lang/String;
    if-nez v1, :cond_36

    .line 595
    iget-object v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    move-object v9, v1

    goto :goto_37

    .line 594
    :cond_36
    move-object v9, v1

    .line 598
    .end local v1    # "rawTypeface":Ljava/lang/String;
    .local v9, "rawTypeface":Ljava/lang/String;
    :goto_37
    new-instance v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-direct/range {v3 .. v9}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    return-object v3
.end method

.method public static greylist-max-o hasColor(I)Z
    .registers 2
    .param p0, "packedColor"    # I

    .line 490
    ushr-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_d

    const v0, 0xffff00

    and-int/2addr v0, p0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method


# virtual methods
.method public greylist-max-o applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 10
    .param p1, "overlay"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 503
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 504
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_b

    :cond_9
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_b
    move v2, v0

    .line 505
    .local v2, "newForegroundColor":I
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 506
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_17

    :cond_15
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_17
    move v3, v0

    .line 507
    .local v3, "newBackgroundColor":I
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 508
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_23

    :cond_21
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_23
    move v4, v0

    .line 509
    .local v4, "newEdgeType":I
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 510
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_2f

    :cond_2d
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_2f
    move v5, v0

    .line 511
    .local v5, "newEdgeColor":I
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 512
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_3b

    :cond_39
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    :goto_3b
    move v6, v0

    .line 513
    .local v6, "newWindowColor":I
    iget-object v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 514
    iget-object v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    goto :goto_45

    :cond_43
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    :goto_45
    move-object v7, v0

    .line 515
    .local v7, "newRawTypeface":Ljava/lang/String;
    new-instance v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-direct/range {v1 .. v7}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    return-object v1
.end method

.method public whitelist getTypeface()Landroid/graphics/Typeface;
    .registers 3

    .line 570
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 571
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    .line 573
    :cond_15
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public whitelist hasBackgroundColor()Z
    .registers 2

    .line 525
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    return v0
.end method

.method public whitelist hasEdgeColor()Z
    .registers 2

    .line 552
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    return v0
.end method

.method public whitelist hasEdgeType()Z
    .registers 2

    .line 543
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    return v0
.end method

.method public whitelist hasForegroundColor()Z
    .registers 2

    .line 534
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    return v0
.end method

.method public whitelist hasWindowColor()Z
    .registers 2

    .line 561
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    return v0
.end method
