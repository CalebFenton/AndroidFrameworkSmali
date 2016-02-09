.class public Landroid/inputmethodservice/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/Keyboard$Row;,
        Landroid/inputmethodservice/Keyboard$Key;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mShiftKeyIndices:[I

.field private mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/inputmethodservice/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/inputmethodservice/Keyboard;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/inputmethodservice/Keyboard;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/inputmethodservice/Keyboard;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/inputmethodservice/Keyboard;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/inputmethodservice/Keyboard;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/inputmethodservice/Keyboard;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 146
    const v0, 0x3fe66666    # 1.8f

    #@3
    sput v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    #@5
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    #@0
    .prologue
    .line 522
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    #@4
    .line 521
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 101
    const/4 v1, 0x2

    #@7
    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    #@9
    aput-object v5, v1, v3

    #@b
    const/4 v2, 0x1

    #@c
    aput-object v5, v1, v2

    #@e
    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@10
    .line 104
    filled-new-array {v4, v4}, [I

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    #@16
    .line 148
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    #@1d
    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@24
    move-result-object v0

    #@25
    .line 558
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@27
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    #@29
    .line 559
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@2b
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    #@2d
    .line 562
    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    #@2f
    .line 563
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    #@31
    div-int/lit8 v1, v1, 0xa

    #@33
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    #@35
    .line 564
    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    #@37
    .line 565
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    #@39
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    #@3b
    .line 566
    new-instance v1, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@40
    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    #@42
    .line 567
    new-instance v1, Ljava/util/ArrayList;

    #@44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@47
    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    #@49
    .line 568
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    #@4b
    .line 569
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@52
    move-result-object v1

    #@53
    invoke-direct {p0, p1, v1}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    #@56
    .line 556
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 101
    const/4 v0, 0x2

    #@7
    new-array v0, v0, [Landroid/inputmethodservice/Keyboard$Key;

    #@9
    aput-object v4, v0, v2

    #@b
    const/4 v1, 0x1

    #@c
    aput-object v4, v0, v1

    #@e
    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@10
    .line 104
    filled-new-array {v3, v3}, [I

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    #@16
    .line 148
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    #@1d
    .line 536
    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    #@1f
    .line 537
    iput p5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    #@21
    .line 539
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    #@23
    .line 540
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    #@25
    div-int/lit8 v0, v0, 0xa

    #@27
    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    #@29
    .line 541
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    #@2b
    .line 542
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    #@2d
    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    #@2f
    .line 543
    new-instance v0, Ljava/util/ArrayList;

    #@31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@34
    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    #@36
    .line 544
    new-instance v0, Ljava/util/ArrayList;

    #@38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@3b
    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    #@3d
    .line 545
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    #@3f
    .line 546
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@46
    move-result-object v0

    #@47
    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    #@4a
    .line 535
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I

    #@0
    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    #@3
    .line 589
    const/4 v6, 0x0

    #@4
    .line 590
    .local v6, "x":I
    const/4 v7, 0x0

    #@5
    .line 591
    .local v7, "y":I
    const/4 v1, 0x0

    #@6
    .line 592
    .local v1, "column":I
    const/4 v8, 0x0

    #@7
    iput v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    #@9
    .line 594
    new-instance v5, Landroid/inputmethodservice/Keyboard$Row;

    #@b
    invoke-direct {v5, p0}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/inputmethodservice/Keyboard;)V

    #@e
    .line 595
    .local v5, "row":Landroid/inputmethodservice/Keyboard$Row;
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    #@10
    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    #@12
    .line 596
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    #@14
    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    #@16
    .line 597
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    #@18
    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    #@1a
    .line 598
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    #@1c
    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    #@1e
    .line 599
    const/16 v8, 0xc

    #@20
    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    #@22
    .line 600
    const/4 v8, -0x1

    #@23
    if-ne p4, v8, :cond_3

    #@25
    const v4, 0x7fffffff

    #@28
    .line 601
    .local v4, "maxColumns":I
    :goto_0
    const/4 v2, 0x0

    #@29
    .local v2, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    #@2c
    move-result v8

    #@2d
    if-ge v2, v8, :cond_4

    #@2f
    .line 602
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@32
    move-result v0

    #@33
    .line 603
    .local v0, "c":C
    if-ge v1, v4, :cond_0

    #@35
    .line 604
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    #@37
    add-int/2addr v8, v6

    #@38
    add-int/2addr v8, p5

    #@39
    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    #@3b
    if-le v8, v9, :cond_1

    #@3d
    .line 605
    :cond_0
    const/4 v6, 0x0

    #@3e
    .line 606
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    #@40
    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    #@42
    add-int/2addr v8, v9

    #@43
    add-int/2addr v7, v8

    #@44
    .line 607
    const/4 v1, 0x0

    #@45
    .line 609
    :cond_1
    new-instance v3, Landroid/inputmethodservice/Keyboard$Key;

    #@47
    invoke-direct {v3, v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    #@4a
    .line 610
    .local v3, "key":Landroid/inputmethodservice/Keyboard$Key;
    iput v6, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@4c
    .line 611
    iput v7, v3, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@4e
    .line 612
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@51
    move-result-object v8

    #@52
    iput-object v8, v3, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    #@54
    .line 613
    const/4 v8, 0x1

    #@55
    new-array v8, v8, [I

    #@57
    const/4 v9, 0x0

    #@58
    aput v0, v8, v9

    #@5a
    iput-object v8, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@5c
    .line 614
    add-int/lit8 v1, v1, 0x1

    #@5e
    .line 615
    iget v8, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@60
    iget v9, v3, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    #@62
    add-int/2addr v8, v9

    #@63
    add-int/2addr v6, v8

    #@64
    .line 616
    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    #@66
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@69
    .line 617
    iget-object v8, v5, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    #@6b
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6e
    .line 618
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    #@70
    if-le v6, v8, :cond_2

    #@72
    .line 619
    iput v6, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    #@74
    .line 601
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@76
    goto :goto_1

    #@77
    .line 600
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v3    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v4    # "maxColumns":I
    :cond_3
    move v4, p4

    #@78
    .restart local v4    # "maxColumns":I
    goto :goto_0

    #@79
    .line 622
    .restart local v2    # "i":I
    :cond_4
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    #@7b
    add-int/2addr v8, v7

    #@7c
    iput v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    #@7e
    .line 623
    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    #@80
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@83
    .line 587
    return-void
.end method

.method private computeNearestNeighbors()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 739
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    #@4
    move-result v10

    #@5
    add-int/lit8 v10, v10, 0xa

    #@7
    add-int/lit8 v10, v10, -0x1

    #@9
    div-int/lit8 v10, v10, 0xa

    #@b
    iput v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    #@d
    .line 740
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    #@10
    move-result v10

    #@11
    add-int/lit8 v10, v10, 0x5

    #@13
    add-int/lit8 v10, v10, -0x1

    #@15
    div-int/lit8 v10, v10, 0x5

    #@17
    iput v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    #@19
    .line 741
    const/16 v10, 0x32

    #@1b
    new-array v10, v10, [[I

    #@1d
    iput-object v10, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    #@1f
    .line 742
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    #@21
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@24
    move-result v10

    #@25
    new-array v6, v10, [I

    #@27
    .line 743
    .local v6, "indices":[I
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    #@29
    mul-int/lit8 v4, v10, 0xa

    #@2b
    .line 744
    .local v4, "gridWidth":I
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    #@2d
    mul-int/lit8 v3, v10, 0x5

    #@2f
    .line 745
    .local v3, "gridHeight":I
    const/4 v8, 0x0

    #@30
    .local v8, "x":I
    :goto_0
    if-ge v8, v4, :cond_5

    #@32
    .line 746
    const/4 v9, 0x0

    #@33
    .local v9, "y":I
    :goto_1
    if-ge v9, v3, :cond_4

    #@35
    .line 747
    const/4 v1, 0x0

    #@36
    .line 748
    .local v1, "count":I
    const/4 v5, 0x0

    #@37
    .local v5, "i":I
    :goto_2
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    #@39
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@3c
    move-result v10

    #@3d
    if-ge v5, v10, :cond_3

    #@3f
    .line 749
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    #@41
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    #@47
    .line 750
    .local v7, "key":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v7, v8, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    #@4a
    move-result v10

    #@4b
    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    #@4d
    if-lt v10, v11, :cond_0

    #@4f
    .line 751
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    #@51
    add-int/2addr v10, v8

    #@52
    add-int/lit8 v10, v10, -0x1

    #@54
    invoke-virtual {v7, v10, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    #@57
    move-result v10

    #@58
    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    #@5a
    if-ge v10, v11, :cond_2

    #@5c
    .line 755
    :cond_0
    :goto_3
    add-int/lit8 v2, v1, 0x1

    #@5e
    .end local v1    # "count":I
    .local v2, "count":I
    aput v5, v6, v1

    #@60
    move v1, v2

    #@61
    .line 748
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@63
    goto :goto_2

    #@64
    .line 752
    :cond_2
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    #@66
    add-int/2addr v10, v8

    #@67
    add-int/lit8 v10, v10, -0x1

    #@69
    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    #@6b
    add-int/2addr v11, v9

    #@6c
    add-int/lit8 v11, v11, -0x1

    #@6e
    invoke-virtual {v7, v10, v11}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    #@71
    move-result v10

    #@72
    .line 753
    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    #@74
    .line 752
    if-lt v10, v11, :cond_0

    #@76
    .line 754
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    #@78
    add-int/2addr v10, v9

    #@79
    add-int/lit8 v10, v10, -0x1

    #@7b
    invoke-virtual {v7, v8, v10}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    #@7e
    move-result v10

    #@7f
    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    #@81
    if-ge v10, v11, :cond_1

    #@83
    goto :goto_3

    #@84
    .line 758
    .end local v7    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_3
    new-array v0, v1, [I

    #@86
    .line 759
    .local v0, "cell":[I
    invoke-static {v6, v13, v0, v13, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@89
    .line 760
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    #@8b
    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    #@8d
    div-int v11, v9, v11

    #@8f
    mul-int/lit8 v11, v11, 0xa

    #@91
    iget v12, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    #@93
    div-int v12, v8, v12

    #@95
    add-int/2addr v11, v12

    #@96
    aput-object v0, v10, v11

    #@98
    .line 746
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    #@9a
    add-int/2addr v9, v10

    #@9b
    goto :goto_1

    #@9c
    .line 745
    .end local v0    # "cell":[I
    .end local v1    # "count":I
    .end local v5    # "i":I
    :cond_4
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    #@9e
    add-int/2addr v8, v10

    #@9f
    goto :goto_0

    #@a0
    .line 737
    .end local v9    # "y":I
    :cond_5
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    #@0
    .prologue
    .line 897
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@3
    move-result-object v0

    #@4
    .line 898
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    #@6
    return p3

    #@7
    .line 899
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@9
    const/4 v2, 0x5

    #@a
    if-ne v1, v2, :cond_1

    #@c
    .line 900
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 901
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@13
    const/4 v2, 0x6

    #@14
    if-ne v1, v2, :cond_2

    #@16
    .line 903
    int-to-float v1, p3

    #@17
    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    #@1a
    move-result v1

    #@1b
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 905
    :cond_2
    return p3
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    #@0
    .prologue
    .line 793
    const/4 v11, 0x0

    #@1
    .line 794
    .local v11, "inKey":Z
    const/4 v12, 0x0

    #@2
    .line 795
    .local v12, "inRow":Z
    const/4 v14, 0x0

    #@3
    .line 796
    .local v14, "leftMostKey":Z
    const/4 v15, 0x0

    #@4
    .line 797
    .local v15, "row":I
    const/4 v5, 0x0

    #@5
    .line 798
    .local v5, "x":I
    const/4 v6, 0x0

    #@6
    .line 799
    .local v6, "y":I
    const/4 v13, 0x0

    #@7
    .line 800
    .local v13, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v4, 0x0

    #@8
    .line 801
    .local v4, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v3

    #@c
    .line 802
    .local v3, "res":Landroid/content/res/Resources;
    const/16 v16, 0x0

    #@e
    .line 806
    .end local v4    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .end local v13    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v16, "skipRow":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    #@11
    move-result v9

    #@12
    .local v9, "event":I
    const/4 v2, 0x1

    #@13
    if-eq v9, v2, :cond_5

    #@15
    .line 807
    const/4 v2, 0x2

    #@16
    if-ne v9, v2, :cond_9

    #@18
    .line 808
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1b
    move-result-object v17

    #@1c
    .line 809
    .local v17, "tag":Ljava/lang/String;
    const-string/jumbo v2, "Row"

    #@1f
    move-object/from16 v0, v17

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 810
    const/4 v12, 0x1

    #@28
    .line 811
    const/4 v5, 0x0

    #@29
    .line 812
    move-object/from16 v0, p0

    #@2b
    move-object/from16 v1, p2

    #@2d
    invoke-virtual {v0, v3, v1}, Landroid/inputmethodservice/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;

    #@30
    move-result-object v4

    #@31
    .line 813
    .local v4, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    move-object/from16 v0, p0

    #@33
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    .line 814
    iget v2, v4, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    #@3a
    if-eqz v2, :cond_1

    #@3c
    iget v2, v4, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    #@3e
    move-object/from16 v0, p0

    #@40
    iget v7, v0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    #@42
    if-eq v2, v7, :cond_1

    #@44
    const/16 v16, 0x1

    #@46
    .line 815
    :goto_1
    if-eqz v16, :cond_0

    #@48
    .line 816
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, p2

    #@4c
    invoke-direct {v0, v1}, Landroid/inputmethodservice/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    #@4f
    .line 817
    const/4 v12, 0x0

    #@50
    goto :goto_0

    #@51
    .line 814
    :cond_1
    const/16 v16, 0x0

    #@53
    goto :goto_1

    #@54
    .line 819
    .end local v4    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    :cond_2
    const-string/jumbo v2, "Key"

    #@57
    move-object/from16 v0, v17

    #@59
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_8

    #@5f
    .line 820
    const/4 v11, 0x1

    #@60
    move-object/from16 v2, p0

    #@62
    move-object/from16 v7, p2

    #@64
    .line 821
    invoke-virtual/range {v2 .. v7}, Landroid/inputmethodservice/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;

    #@67
    move-result-object v13

    #@68
    .line 822
    .local v13, "key":Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    #@6c
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6f
    .line 823
    iget-object v2, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@71
    const/4 v7, 0x0

    #@72
    aget v2, v2, v7

    #@74
    const/4 v7, -0x1

    #@75
    if-ne v2, v7, :cond_7

    #@77
    .line 825
    const/4 v10, 0x0

    #@78
    .local v10, "i":I
    :goto_2
    move-object/from16 v0, p0

    #@7a
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@7c
    array-length v2, v2

    #@7d
    if-ge v10, v2, :cond_3

    #@7f
    .line 826
    move-object/from16 v0, p0

    #@81
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@83
    aget-object v2, v2, v10

    #@85
    if-nez v2, :cond_6

    #@87
    .line 827
    move-object/from16 v0, p0

    #@89
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@8b
    aput-object v13, v2, v10

    #@8d
    .line 828
    move-object/from16 v0, p0

    #@8f
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    #@91
    move-object/from16 v0, p0

    #@93
    iget-object v7, v0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    #@95
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@98
    move-result v7

    #@99
    add-int/lit8 v7, v7, -0x1

    #@9b
    aput v7, v2, v10

    #@9d
    .line 832
    :cond_3
    move-object/from16 v0, p0

    #@9f
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    #@a1
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a4
    .line 836
    .end local v10    # "i":I
    :cond_4
    :goto_3
    iget-object v2, v4, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    #@a6
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a9
    goto/16 :goto_0

    #@ab
    .line 857
    .end local v9    # "event":I
    .end local v13    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v17    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@ac
    .line 858
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Keyboard"

    #@af
    new-instance v7, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v18, "Parse error:"

    #@b7
    move-object/from16 v0, v18

    #@b9
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v7

    #@bd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v7

    #@c1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v7

    #@c5
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 859
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    #@cb
    .line 861
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    #@cd
    iget v2, v0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    #@cf
    sub-int v2, v6, v2

    #@d1
    move-object/from16 v0, p0

    #@d3
    iput v2, v0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    #@d5
    .line 792
    return-void

    #@d6
    .line 825
    .restart local v9    # "event":I
    .restart local v10    # "i":I
    .restart local v13    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v17    # "tag":Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    #@d8
    goto :goto_2

    #@d9
    .line 833
    .end local v10    # "i":I
    :cond_7
    :try_start_1
    iget-object v2, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@db
    const/4 v7, 0x0

    #@dc
    aget v2, v2, v7

    #@de
    const/4 v7, -0x6

    #@df
    if-ne v2, v7, :cond_4

    #@e1
    .line 834
    move-object/from16 v0, p0

    #@e3
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    #@e5
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e8
    goto :goto_3

    #@e9
    .line 837
    .end local v13    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_8
    const-string/jumbo v2, "Keyboard"

    #@ec
    move-object/from16 v0, v17

    #@ee
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f1
    move-result v2

    #@f2
    if-eqz v2, :cond_0

    #@f4
    .line 838
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, p2

    #@f8
    invoke-direct {v0, v3, v1}, Landroid/inputmethodservice/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    #@fb
    goto/16 :goto_0

    #@fd
    .line 840
    .end local v17    # "tag":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x3

    #@fe
    if-ne v9, v2, :cond_0

    #@100
    .line 841
    if-eqz v11, :cond_a

    #@102
    .line 842
    const/4 v11, 0x0

    #@103
    .line 843
    iget v2, v13, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    #@105
    iget v7, v13, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@107
    add-int/2addr v2, v7

    #@108
    add-int/2addr v5, v2

    #@109
    .line 844
    move-object/from16 v0, p0

    #@10b
    iget v2, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    #@10d
    if-le v5, v2, :cond_0

    #@10f
    .line 845
    move-object/from16 v0, p0

    #@111
    iput v5, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    #@113
    goto/16 :goto_0

    #@115
    .line 847
    :cond_a
    if-eqz v12, :cond_0

    #@117
    .line 848
    const/4 v12, 0x0

    #@118
    .line 849
    iget v2, v4, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    #@11a
    add-int/2addr v6, v2

    #@11b
    .line 850
    iget v2, v4, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@11d
    add-int/2addr v6, v2

    #@11e
    .line 851
    add-int/lit8 v15, v15, 0x1

    #@120
    goto/16 :goto_0
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 876
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@4
    move-result-object v1

    #@5
    .line 877
    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard:[I

    #@7
    .line 876
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    .line 881
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    #@d
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    #@f
    div-int/lit8 v2, v2, 0xa

    #@11
    .line 879
    invoke-static {v0, v4, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    #@17
    .line 884
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    #@19
    .line 883
    const/4 v2, 0x1

    #@1a
    .line 884
    const/16 v3, 0x32

    #@1c
    .line 882
    invoke-static {v0, v2, v1, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    #@22
    .line 887
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    #@24
    .line 886
    const/4 v2, 0x2

    #@25
    .line 885
    invoke-static {v0, v2, v1, v4}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    #@28
    move-result v1

    #@29
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    #@2b
    .line 890
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    #@2d
    .line 889
    const/4 v2, 0x3

    #@2e
    .line 888
    invoke-static {v0, v2, v1, v4}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    #@31
    move-result v1

    #@32
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    #@34
    .line 891
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    #@36
    int-to-float v1, v1

    #@37
    sget v2, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    #@39
    mul-float/2addr v1, v2

    #@3a
    float-to-int v1, v1

    #@3b
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    #@3d
    .line 892
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    #@3f
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    #@41
    mul-int/2addr v1, v2

    #@42
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    #@44
    .line 893
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@47
    .line 875
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 867
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    #@3
    move-result v0

    #@4
    .local v0, "event":I
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_1

    #@7
    .line 868
    const/4 v1, 0x3

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 869
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "Row"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    .line 868
    if-eqz v1, :cond_0

    #@17
    .line 865
    :cond_1
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    #@0
    .prologue
    .line 789
    new-instance v0, Landroid/inputmethodservice/Keyboard$Key;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    #@a
    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    #@0
    .prologue
    .line 784
    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    #@2
    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    #@5
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 702
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    #@2
    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    #@0
    .prologue
    .line 666
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    #@2
    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    #@0
    .prologue
    .line 682
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    #@2
    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    #@0
    .prologue
    .line 690
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    #@2
    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    #@0
    .prologue
    .line 706
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    #@2
    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 662
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 773
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    #@3
    if-nez v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/inputmethodservice/Keyboard;->computeNearestNeighbors()V

    #@8
    .line 774
    :cond_0
    if-ltz p1, :cond_1

    #@a
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    #@d
    move-result v1

    #@e
    if-ge p1, v1, :cond_1

    #@10
    if-ltz p2, :cond_1

    #@12
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    #@15
    move-result v1

    #@16
    if-ge p2, v1, :cond_1

    #@18
    .line 775
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    #@1a
    div-int v1, p2, v1

    #@1c
    mul-int/lit8 v1, v1, 0xa

    #@1e
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    #@20
    div-int v2, p1, v2

    #@22
    add-int v0, v1, v2

    #@24
    .line 776
    .local v0, "index":I
    const/16 v1, 0x32

    #@26
    if-ge v0, v1, :cond_1

    #@28
    .line 777
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    #@2a
    aget-object v1, v1, v0

    #@2c
    return-object v1

    #@2d
    .line 780
    .end local v0    # "index":I
    :cond_1
    new-array v1, v3, [I

    #@2f
    return-object v1
.end method

.method public getShiftKeyIndex()I
    .locals 2

    #@0
    .prologue
    .line 734
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    #@2
    const/4 v1, 0x0

    #@3
    aget v0, v0, v1

    #@5
    return v0
.end method

.method public getShiftKeyIndices()[I
    .locals 1

    #@0
    .prologue
    .line 730
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    #@2
    return-object v0
.end method

.method protected getVerticalGap()I
    .locals 1

    #@0
    .prologue
    .line 674
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    #@2
    return v0
.end method

.method public isShifted()Z
    .locals 1

    #@0
    .prologue
    .line 723
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    #@2
    return v0
.end method

.method final resize(II)V
    .locals 12
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    #@0
    .prologue
    .line 627
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    .line 628
    .local v3, "numRows":I
    const/4 v5, 0x0

    #@7
    .local v5, "rowIndex":I
    :goto_0
    if-ge v5, v3, :cond_3

    #@9
    .line 629
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/inputmethodservice/Keyboard$Row;

    #@11
    .line 630
    .local v4, "row":Landroid/inputmethodservice/Keyboard$Row;
    iget-object v10, v4, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v2

    #@17
    .line 631
    .local v2, "numKeys":I
    const/4 v7, 0x0

    #@18
    .line 632
    .local v7, "totalGap":I
    const/4 v8, 0x0

    #@19
    .line 633
    .local v8, "totalWidth":I
    const/4 v1, 0x0

    #@1a
    .local v1, "keyIndex":I
    :goto_1
    if-ge v1, v2, :cond_1

    #@1c
    .line 634
    iget-object v10, v4, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    #@24
    .line 635
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-lez v1, :cond_0

    #@26
    .line 636
    iget v10, v0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    #@28
    add-int/2addr v7, v10

    #@29
    .line 638
    :cond_0
    iget v10, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@2b
    add-int/2addr v8, v10

    #@2c
    .line 633
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 640
    .end local v0    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    add-int v10, v7, v8

    #@31
    if-le v10, p1, :cond_2

    #@33
    .line 641
    const/4 v9, 0x0

    #@34
    .line 642
    .local v9, "x":I
    sub-int v10, p1, v7

    #@36
    int-to-float v10, v10

    #@37
    int-to-float v11, v8

    #@38
    div-float v6, v10, v11

    #@3a
    .line 643
    .local v6, "scaleFactor":F
    const/4 v1, 0x0

    #@3b
    :goto_2
    if-ge v1, v2, :cond_2

    #@3d
    .line 644
    iget-object v10, v4, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    #@45
    .line 645
    .restart local v0    # "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v10, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@47
    int-to-float v10, v10

    #@48
    mul-float/2addr v10, v6

    #@49
    float-to-int v10, v10

    #@4a
    iput v10, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@4c
    .line 646
    iput v9, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@4e
    .line 647
    iget v10, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@50
    iget v11, v0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    #@52
    add-int/2addr v10, v11

    #@53
    add-int/2addr v9, v10

    #@54
    .line 643
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_2

    #@57
    .line 628
    .end local v0    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v6    # "scaleFactor":F
    .end local v9    # "x":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 651
    .end local v1    # "keyIndex":I
    .end local v2    # "numKeys":I
    .end local v4    # "row":Landroid/inputmethodservice/Keyboard$Row;
    .end local v7    # "totalGap":I
    .end local v8    # "totalWidth":I
    :cond_3
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    #@5c
    .line 626
    return-void
.end method

.method protected setHorizontalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    #@0
    .prologue
    .line 670
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    #@2
    .line 669
    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 686
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    #@2
    .line 685
    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0
    .param p1, "width"    # I

    #@0
    .prologue
    .line 694
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    #@2
    .line 693
    return-void
.end method

.method public setShifted(Z)Z
    .locals 5
    .param p1, "shiftState"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 710
    iget-object v3, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@3
    array-length v4, v3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v4, :cond_1

    #@7
    aget-object v0, v3, v1

    #@9
    .line 711
    .local v0, "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v0, :cond_0

    #@b
    .line 712
    iput-boolean p1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    #@d
    .line 710
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 715
    .end local v0    # "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    #@12
    if-eq v1, p1, :cond_2

    #@14
    .line 716
    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    #@16
    .line 717
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 719
    :cond_2
    return v2
.end method

.method protected setVerticalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    #@0
    .prologue
    .line 678
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    #@2
    .line 677
    return-void
.end method
