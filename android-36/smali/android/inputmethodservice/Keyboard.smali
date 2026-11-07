.class public Landroid/inputmethodservice/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/Keyboard$Key;,
        Landroid/inputmethodservice/Keyboard$Row;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist EDGE_BOTTOM:I = 0x8

.field public static final whitelist EDGE_LEFT:I = 0x1

.field public static final whitelist EDGE_RIGHT:I = 0x2

.field public static final whitelist EDGE_TOP:I = 0x4

.field private static final greylist-max-o GRID_HEIGHT:I = 0x5

.field private static final greylist-max-o GRID_SIZE:I = 0x32

.field private static final greylist-max-o GRID_WIDTH:I = 0xa

.field public static final whitelist KEYCODE_ALT:I = -0x6

.field public static final whitelist KEYCODE_CANCEL:I = -0x3

.field public static final whitelist KEYCODE_DELETE:I = -0x5

.field public static final whitelist KEYCODE_DONE:I = -0x4

.field public static final whitelist KEYCODE_MODE_CHANGE:I = -0x2

.field public static final whitelist KEYCODE_SHIFT:I = -0x1

.field private static greylist-max-o SEARCH_DISTANCE:F = 0.0f

.field static final greylist-max-o TAG:Ljava/lang/String; = "Keyboard"

.field private static final greylist-max-o TAG_KEY:Ljava/lang/String; = "Key"

.field private static final greylist-max-o TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final greylist-max-o TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private greylist-max-o mCellHeight:I

.field private greylist-max-o mCellWidth:I

.field private greylist-max-o mDefaultHeight:I

.field private greylist-max-o mDefaultHorizontalGap:I

.field private greylist-max-o mDefaultVerticalGap:I

.field private greylist-max-o mDefaultWidth:I

.field private greylist-max-o mDisplayHeight:I

.field private greylist-max-o mDisplayWidth:I

.field private greylist-max-o mGridNeighbors:[[I

.field private greylist-max-o mKeyHeight:I

.field private greylist-max-o mKeyWidth:I

.field private greylist-max-o mKeyboardMode:I

.field private greylist-max-o mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private greylist mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProximityThreshold:I

.field private greylist-max-o mShiftKeyIndices:[I

.field private greylist-max-o mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private greylist-max-o mShifted:Z

.field private greylist mTotalHeight:I

.field private greylist mTotalWidth:I

.field private greylist-max-o rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDefaultHeight(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultHorizontalGap(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultVerticalGap(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultWidth(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayHeight(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 156
    const v0, 0x3fe66666    # 1.8f

    sput v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 534
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 111
    const/4 v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 568
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 569
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 570
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 573
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 574
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 575
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 576
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 578
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 579
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 580
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 581
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;IIII)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 111
    const/4 v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 547
    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 548
    iput p5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 550
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 551
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 552
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 553
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 556
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 558
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I

    .line 599
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "x":I
    const/4 v1, 0x0

    .line 602
    .local v1, "y":I
    const/4 v2, 0x0

    .line 603
    .local v2, "column":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 605
    new-instance v3, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/inputmethodservice/Keyboard;)V

    .line 606
    .local v3, "row":Landroid/inputmethodservice/Keyboard$Row;
    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    iput v4, v3, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 607
    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v4, v3, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    .line 608
    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iput v4, v3, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    .line 609
    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v4, v3, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    .line 610
    const/16 v4, 0xc

    iput v4, v3, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    .line 611
    const/4 v4, -0x1

    if-ne p4, v4, :cond_29

    const v4, 0x7fffffff

    goto :goto_2a

    :cond_29
    move v4, p4

    .line 612
    .local v4, "maxColumns":I
    :goto_2a
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2b
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_77

    .line 613
    invoke-interface {p3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 614
    .local v6, "c":C
    if-ge v2, v4, :cond_3f

    iget v7, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    add-int/2addr v7, v0

    add-int/2addr v7, p5

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    if-le v7, v8, :cond_47

    .line 616
    :cond_3f
    const/4 v0, 0x0

    .line 617
    iget v7, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 618
    const/4 v2, 0x0

    .line 620
    :cond_47
    new-instance v7, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {v7, v3}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    .line 621
    .local v7, "key":Landroid/inputmethodservice/Keyboard$Key;
    iput v0, v7, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 622
    iput v1, v7, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 623
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 624
    filled-new-array {v6}, [I

    move-result-object v8

    iput-object v8, v7, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 625
    add-int/lit8 v2, v2, 0x1

    .line 626
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v9, v7, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 627
    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v8, v3, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v0, v8, :cond_74

    .line 630
    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 612
    .end local v6    # "c":C
    .end local v7    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 633
    .end local v5    # "i":I
    :cond_77
    iget v5, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 634
    iget-object v5, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    return-void
.end method

.method private greylist-max-o computeNearestNeighbors()V
    .registers 11

    .line 751
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 752
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 753
    const/16 v0, 0x32

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    .line 754
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 755
    .local v0, "indices":[I
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    mul-int/lit8 v1, v1, 0xa

    .line 756
    .local v1, "gridWidth":I
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    mul-int/lit8 v2, v2, 0x5

    .line 757
    .local v2, "gridHeight":I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_2f
    if-ge v3, v1, :cond_9f

    .line 758
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_32
    if-ge v4, v2, :cond_9b

    .line 759
    const/4 v5, 0x0

    .line 760
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_36
    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_82

    .line 761
    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 762
    .local v7, "key":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v7, v3, v4}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_7a

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    .line 763
    invoke-virtual {v7, v8, v4}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_7a

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    .line 764
    invoke-virtual {v7, v8, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_7a

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x1

    .line 766
    invoke-virtual {v7, v3, v8}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-ge v8, v9, :cond_7f

    .line 767
    :cond_7a
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "count":I
    .local v8, "count":I
    aput v6, v0, v5

    move v5, v8

    .line 760
    .end local v7    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v8    # "count":I
    .restart local v5    # "count":I
    :cond_7f
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 770
    .end local v6    # "i":I
    :cond_82
    new-array v6, v5, [I

    .line 771
    .local v6, "cell":[I
    const/4 v7, 0x0

    invoke-static {v0, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v8, v4, v8

    mul-int/lit8 v8, v8, 0xa

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v9, v3, v9

    add-int/2addr v8, v9

    aput-object v6, v7, v8

    .line 758
    .end local v5    # "count":I
    .end local v6    # "cell":[I
    iget v5, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v4, v5

    goto :goto_32

    .line 757
    .end local v4    # "y":I
    :cond_9b
    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v3, v4

    goto :goto_2f

    .line 775
    .end local v3    # "x":I
    :cond_9f
    return-void
.end method

.method static greylist-max-o getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .registers 7
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    .line 909
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 910
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_7

    return p3

    .line 911
    :cond_7
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    .line 912
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    return v1

    .line 913
    :cond_11
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_20

    .line 915
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    .line 917
    :cond_20
    return p3
.end method

.method private greylist-max-o loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 805
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    const-string v7, "Keyboard"

    const/4 v0, 0x0

    .line 806
    .local v0, "inKey":Z
    const/4 v2, 0x0

    .line 807
    .local v2, "inRow":Z
    const/4 v8, 0x0

    .line 808
    .local v8, "leftMostKey":Z
    const/4 v3, 0x0

    .line 809
    .local v3, "row":I
    const/4 v4, 0x0

    .line 810
    .local v4, "x":I
    const/4 v5, 0x0

    .line 811
    .local v5, "y":I
    const/4 v9, 0x0

    .line 812
    .local v9, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v10, 0x0

    .line 813
    .local v10, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    move v11, v2

    .end local v2    # "inRow":Z
    .local v11, "inRow":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 814
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v12, 0x0

    move v13, v12

    move-object v12, v10

    move-object v10, v9

    move v9, v3

    move v3, v0

    .line 818
    .end local v0    # "inKey":Z
    .local v3, "inKey":Z
    .local v9, "row":I
    .local v10, "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v12, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v13, "skipRow":Z
    :goto_19
    :try_start_19
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v14, v0

    .local v14, "event":I
    const/4 v15, 0x1

    if-eq v0, v15, :cond_14a

    .line 819
    const/4 v0, 0x2

    if-ne v14, v0, :cond_114

    .line 820
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "tag":Ljava/lang/String;
    move/from16 v16, v15

    const-string v15, "Row"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_30} :catch_151

    const/16 v17, 0x0

    if-eqz v15, :cond_87

    .line 822
    const/4 v11, 0x1

    .line 823
    const/4 v4, 0x0

    .line 824
    :try_start_36
    invoke-virtual {v1, v2, v6}, Landroid/inputmethodservice/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;

    move-result-object v15
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3a} :catch_7e

    .line 825
    .end local v12    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v15, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    :try_start_3a
    iget-object v12, v1, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    iget v12, v15, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    if-eqz v12, :cond_53

    iget v12, v15, Landroid/inputmethodservice/Keyboard$Row;->mode:I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_75

    move-object/from16 v18, v2

    .end local v2    # "res":Landroid/content/res/Resources;
    .local v18, "res":Landroid/content/res/Resources;
    :try_start_47
    iget v2, v1, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_49} :catch_4c

    if-eq v12, v2, :cond_55

    goto :goto_57

    .line 869
    .end local v0    # "tag":Ljava/lang/String;
    .end local v14    # "event":I
    :catch_4c
    move-exception v0

    move-object v2, v1

    move-object v1, v15

    move-object/from16 v12, v18

    goto/16 :goto_158

    .line 826
    .end local v18    # "res":Landroid/content/res/Resources;
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v14    # "event":I
    :cond_53
    move-object/from16 v18, v2

    .end local v2    # "res":Landroid/content/res/Resources;
    .restart local v18    # "res":Landroid/content/res/Resources;
    :cond_55
    move/from16 v16, v17

    .line 827
    .end local v13    # "skipRow":Z
    .local v16, "skipRow":Z
    :goto_57
    if-eqz v16, :cond_6e

    .line 828
    :try_start_59
    invoke-direct {v1, v6}, Landroid/inputmethodservice/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_65

    .line 829
    const/4 v2, 0x0

    move v11, v2

    move/from16 v13, v16

    move-object/from16 v12, v18

    move-object v2, v1

    .end local v11    # "inRow":Z
    .local v2, "inRow":Z
    goto/16 :goto_109

    .line 869
    .end local v0    # "tag":Ljava/lang/String;
    .end local v2    # "inRow":Z
    .end local v14    # "event":I
    .restart local v11    # "inRow":Z
    :catch_65
    move-exception v0

    move-object v2, v1

    move-object v1, v15

    move/from16 v13, v16

    move-object/from16 v12, v18

    goto/16 :goto_158

    .line 827
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v14    # "event":I
    :cond_6e
    move-object v2, v1

    move/from16 v13, v16

    move-object/from16 v12, v18

    goto/16 :goto_109

    .line 869
    .end local v0    # "tag":Ljava/lang/String;
    .end local v14    # "event":I
    .end local v16    # "skipRow":Z
    .end local v18    # "res":Landroid/content/res/Resources;
    .local v2, "res":Landroid/content/res/Resources;
    .restart local v13    # "skipRow":Z
    :catch_75
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v1

    move-object v1, v15

    move-object/from16 v12, v18

    .end local v2    # "res":Landroid/content/res/Resources;
    .restart local v18    # "res":Landroid/content/res/Resources;
    goto/16 :goto_158

    .end local v15    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .end local v18    # "res":Landroid/content/res/Resources;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v12    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    :catch_7e
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v1

    move-object v1, v12

    move-object/from16 v12, v18

    .end local v2    # "res":Landroid/content/res/Resources;
    .restart local v18    # "res":Landroid/content/res/Resources;
    goto/16 :goto_158

    .line 831
    .end local v18    # "res":Landroid/content/res/Resources;
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v14    # "event":I
    :cond_87
    move-object/from16 v18, v2

    .end local v2    # "res":Landroid/content/res/Resources;
    .restart local v18    # "res":Landroid/content/res/Resources;
    :try_start_89
    const-string v2, "Key"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8f} :catch_10e

    if-eqz v2, :cond_fb

    .line 832
    const/4 v15, 0x1

    .line 833
    .end local v3    # "inKey":Z
    .local v15, "inKey":Z
    move-object v3, v12

    move-object/from16 v2, v18

    .end local v12    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .end local v18    # "res":Landroid/content/res/Resources;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .local v3, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    :try_start_95
    invoke-virtual/range {v1 .. v6}, Landroid/inputmethodservice/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v12
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_99} :catch_f1

    move-object v2, v1

    move-object v1, v3

    .line 834
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .end local v10    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v1, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v12, "key":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v18    # "res":Landroid/content/res/Resources;
    :try_start_9b
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    iget-object v3, v12, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v17

    const/4 v10, -0x1

    if-ne v3, v10, :cond_d3

    .line 837
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a8
    iget-object v10, v2, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v10, v10

    if-ge v3, v10, :cond_cb

    .line 838
    iget-object v10, v2, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v10, v10, v3

    if-nez v10, :cond_c6

    .line 839
    iget-object v10, v2, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aput-object v12, v10, v3

    .line 840
    iget-object v10, v2, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    move/from16 v17, v3

    .end local v3    # "i":I
    .local v17, "i":I
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v10, v17

    .line 841
    goto :goto_cd

    .line 837
    .end local v17    # "i":I
    .restart local v3    # "i":I
    :cond_c6
    move/from16 v17, v3

    .end local v3    # "i":I
    .restart local v17    # "i":I
    add-int/lit8 v3, v17, 0x1

    .end local v17    # "i":I
    .restart local v3    # "i":I
    goto :goto_a8

    :cond_cb
    move/from16 v17, v3

    .line 844
    .end local v3    # "i":I
    :goto_cd
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 845
    :cond_d3
    iget-object v3, v12, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v17

    const/4 v10, -0x6

    if-ne v3, v10, :cond_df

    .line 846
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    :cond_df
    :goto_df
    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_e4} :catch_ea

    move-object v10, v12

    move v3, v15

    move-object/from16 v12, v18

    move-object v15, v1

    goto :goto_109

    .line 869
    .end local v0    # "tag":Ljava/lang/String;
    .end local v14    # "event":I
    :catch_ea
    move-exception v0

    move-object v10, v12

    move v3, v15

    move-object/from16 v12, v18

    goto/16 :goto_158

    .end local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .end local v12    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v18    # "res":Landroid/content/res/Resources;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .local v3, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v10    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :catch_f1
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v1

    move-object v1, v3

    move v3, v15

    move-object/from16 v12, v18

    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v18    # "res":Landroid/content/res/Resources;
    goto/16 :goto_158

    .line 849
    .end local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .end local v15    # "inKey":Z
    .restart local v0    # "tag":Ljava/lang/String;
    .local v3, "inKey":Z
    .local v12, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v14    # "event":I
    :cond_fb
    move-object v2, v1

    move-object v1, v12

    move-object/from16 v12, v18

    .end local v18    # "res":Landroid/content/res/Resources;
    .restart local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v12, "res":Landroid/content/res/Resources;
    :try_start_ff
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_108

    .line 850
    invoke-direct {v2, v12, v6}, Landroid/inputmethodservice/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 852
    .end local v0    # "tag":Ljava/lang/String;
    :cond_108
    move-object v15, v1

    .end local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v15, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    :goto_109
    move-object v1, v2

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_19

    .line 869
    .end local v14    # "event":I
    .end local v15    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v12, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v18    # "res":Landroid/content/res/Resources;
    :catch_10e
    move-exception v0

    move-object v2, v1

    move-object v1, v12

    move-object/from16 v12, v18

    .end local v18    # "res":Landroid/content/res/Resources;
    .restart local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v12, "res":Landroid/content/res/Resources;
    goto :goto_158

    .line 852
    .end local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .local v12, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v14    # "event":I
    :cond_114
    move-object/from16 v19, v2

    move-object v2, v1

    move-object v1, v12

    move-object/from16 v12, v19

    .end local v2    # "res":Landroid/content/res/Resources;
    .restart local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v12, "res":Landroid/content/res/Resources;
    const/4 v0, 0x3

    if-ne v14, v0, :cond_142

    .line 853
    if-eqz v3, :cond_12f

    .line 854
    const/4 v3, 0x0

    .line 855
    iget v0, v10, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget v15, v10, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v15

    add-int/2addr v4, v0

    .line 856
    iget v0, v2, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v4, v0, :cond_142

    .line 857
    iput v4, v2, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    goto :goto_142

    .line 869
    .end local v14    # "event":I
    :catch_12d
    move-exception v0

    goto :goto_158

    .line 859
    .restart local v14    # "event":I
    :cond_12f
    if-eqz v11, :cond_142

    .line 860
    const/4 v11, 0x0

    .line 861
    iget v0, v1, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    add-int/2addr v5, v0

    .line 862
    iget v0, v1, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_137} :catch_12d

    add-int/2addr v5, v0

    .line 863
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v19, v12

    move-object v12, v1

    move-object v1, v2

    move-object/from16 v2, v19

    goto/16 :goto_19

    .line 818
    .end local v14    # "event":I
    :cond_142
    :goto_142
    move-object/from16 v19, v12

    move-object v12, v1

    move-object v1, v2

    move-object/from16 v2, v19

    goto/16 :goto_19

    .end local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .local v12, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v14    # "event":I
    :cond_14a
    move-object/from16 v19, v2

    move-object v2, v1

    move-object v1, v12

    move-object/from16 v12, v19

    .line 872
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v14    # "event":I
    .restart local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v12, "res":Landroid/content/res/Resources;
    goto :goto_171

    .line 869
    .end local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .local v12, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    :catch_151
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v1

    move-object v1, v12

    move-object/from16 v12, v19

    .line 870
    .end local v2    # "res":Landroid/content/res/Resources;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v12, "res":Landroid/content/res/Resources;
    :goto_158
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Parse error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 873
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_171
    iget v0, v2, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    sub-int v0, v5, v0

    iput v0, v2, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 874
    return-void
.end method

.method private greylist-max-o parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 888
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 891
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 894
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/16 v2, 0x32

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 897
    const/4 v1, 0x2

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    invoke-static {v0, v1, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 900
    const/4 v1, 0x3

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 903
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 904
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 905
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 906
    return-void
.end method

.method private greylist-max-o skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .registers 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    nop

    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "event":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_19

    .line 880
    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 881
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Row"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    nop

    .line 885
    :cond_19
    return-void
.end method


# virtual methods
.method protected whitelist createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .registers 12
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 801
    new-instance v0, Landroid/inputmethodservice/Keyboard$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "parent":Landroid/inputmethodservice/Keyboard$Row;
    .end local p3    # "x":I
    .end local p4    # "y":I
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .local v1, "res":Landroid/content/res/Resources;
    .local v2, "parent":Landroid/inputmethodservice/Keyboard$Row;
    .local v3, "x":I
    .local v4, "y":I
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected whitelist createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 796
    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 714
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected whitelist getHorizontalGap()I
    .registers 2

    .line 678
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected whitelist getKeyHeight()I
    .registers 2

    .line 694
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected whitelist getKeyWidth()I
    .registers 2

    .line 702
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public whitelist getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMinWidth()I
    .registers 2

    .line 718
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public whitelist getModifierKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 674
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNearestKeys(II)[I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 785
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/inputmethodservice/Keyboard;->computeNearestNeighbors()V

    .line 786
    :cond_7
    if-ltz p1, :cond_2b

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_2b

    if-ltz p2, :cond_2b

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_2b

    .line 787
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    .line 788
    .local v0, "index":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_2b

    .line 789
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    return-object v1

    .line 792
    .end local v0    # "index":I
    :cond_2b
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getShiftKeyIndex()I
    .registers 3

    .line 746
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getShiftKeyIndices()[I
    .registers 2

    .line 742
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected whitelist getVerticalGap()I
    .registers 2

    .line 686
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public whitelist isShifted()Z
    .registers 2

    .line 735
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    return v0
.end method

.method final greylist-max-p resize(II)V
    .registers 15
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .line 639
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 640
    .local v0, "numRows":I
    const/4 v1, 0x0

    .local v1, "rowIndex":I
    :goto_7
    if-ge v1, v0, :cond_59

    .line 641
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Row;

    .line 642
    .local v2, "row":Landroid/inputmethodservice/Keyboard$Row;
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 643
    .local v3, "numKeys":I
    const/4 v4, 0x0

    .line 644
    .local v4, "totalGap":I
    const/4 v5, 0x0

    .line 645
    .local v5, "totalWidth":I
    const/4 v6, 0x0

    .local v6, "keyIndex":I
    :goto_1a
    if-ge v6, v3, :cond_2f

    .line 646
    iget-object v7, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 647
    .local v7, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-lez v6, :cond_29

    .line 648
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v4, v8

    .line 650
    :cond_29
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v5, v8

    .line 645
    .end local v7    # "key":Landroid/inputmethodservice/Keyboard$Key;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 652
    .end local v6    # "keyIndex":I
    :cond_2f
    add-int v6, v4, v5

    if-le v6, p1, :cond_56

    .line 653
    const/4 v6, 0x0

    .line 654
    .local v6, "x":I
    sub-int v7, p1, v4

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    .line 655
    .local v7, "scaleFactor":F
    const/4 v8, 0x0

    .local v8, "keyIndex":I
    :goto_3a
    if-ge v8, v3, :cond_56

    .line 656
    iget-object v9, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/inputmethodservice/Keyboard$Key;

    .line 657
    .local v9, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 658
    iput v6, v9, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 659
    iget v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v11, v9, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 655
    .end local v9    # "key":Landroid/inputmethodservice/Keyboard$Key;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    .line 640
    .end local v2    # "row":Landroid/inputmethodservice/Keyboard$Row;
    .end local v3    # "numKeys":I
    .end local v4    # "totalGap":I
    .end local v5    # "totalWidth":I
    .end local v6    # "x":I
    .end local v7    # "scaleFactor":F
    .end local v8    # "keyIndex":I
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 663
    .end local v1    # "rowIndex":I
    :cond_59
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 667
    return-void
.end method

.method protected whitelist setHorizontalGap(I)V
    .registers 2
    .param p1, "gap"    # I

    .line 682
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 683
    return-void
.end method

.method protected whitelist setKeyHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 698
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 699
    return-void
.end method

.method protected whitelist setKeyWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 706
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 707
    return-void
.end method

.method public whitelist setShifted(Z)Z
    .registers 7
    .param p1, "shiftState"    # Z

    .line 722
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget-object v4, v0, v3

    .line 723
    .local v4, "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v4, :cond_d

    .line 724
    iput-boolean p1, v4, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 722
    .end local v4    # "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 727
    :cond_10
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_18

    .line 728
    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    .line 729
    const/4 v0, 0x1

    return v0

    .line 731
    :cond_18
    return v2
.end method

.method protected whitelist setVerticalGap(I)V
    .registers 2
    .param p1, "gap"    # I

    .line 690
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 691
    return-void
.end method
