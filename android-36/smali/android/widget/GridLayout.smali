.class public Landroid/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridLayout$Axis;,
        Landroid/widget/GridLayout$Alignment;,
        Landroid/widget/GridLayout$LayoutParams;,
        Landroid/widget/GridLayout$Spec;,
        Landroid/widget/GridLayout$Interval;,
        Landroid/widget/GridLayout$PackedMap;,
        Landroid/widget/GridLayout$Bounds;,
        Landroid/widget/GridLayout$Assoc;,
        Landroid/widget/GridLayout$MutableInt;,
        Landroid/widget/GridLayout$Arc;,
        Landroid/widget/GridLayout$AlignmentMode;,
        Landroid/widget/GridLayout$Orientation;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALIGNMENT_MODE:I = 0x6

.field public static final whitelist ALIGN_BOUNDS:I = 0x0

.field public static final whitelist ALIGN_MARGINS:I = 0x1

.field public static final whitelist BASELINE:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist BOTTOM:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o CAN_STRETCH:I = 0x2

.field public static final whitelist CENTER:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o COLUMN_COUNT:I = 0x3

.field private static final greylist-max-o COLUMN_ORDER_PRESERVED:I = 0x4

.field private static final greylist-max-o DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final greylist-max-o DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final greylist-max-o DEFAULT_COUNT:I = -0x80000000

.field private static final greylist-max-o DEFAULT_ORDER_PRESERVED:Z = true

.field private static final greylist-max-o DEFAULT_ORIENTATION:I = 0x0

.field private static final greylist-max-o DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final whitelist END:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist FILL:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist HORIZONTAL:I = 0x0

.field private static final greylist-max-o INFLEXIBLE:I = 0x0

.field private static final greylist-max-o LEADING:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist LEFT:Landroid/widget/GridLayout$Alignment;

.field static final greylist-max-o LOG_PRINTER:Landroid/util/Printer;

.field static final greylist-max-o MAX_SIZE:I = 0x186a0

.field static final greylist-max-o NO_PRINTER:Landroid/util/Printer;

.field private static final greylist-max-o ORIENTATION:I = 0x0

.field public static final whitelist RIGHT:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o ROW_COUNT:I = 0x1

.field private static final greylist-max-o ROW_ORDER_PRESERVED:I = 0x2

.field public static final whitelist START:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist TOP:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o TRAILING:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist UNDEFINED:I = -0x80000000

.field static final greylist-max-r UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

.field static final greylist-max-o UNINITIALIZED_HASH:I = 0x0

.field private static final greylist-max-o USE_DEFAULT_MARGINS:I = 0x5

.field public static final whitelist VERTICAL:I = 0x1


# instance fields
.field greylist-max-o mAlignmentMode:I

.field greylist-max-o mDefaultGap:I

.field final greylist-max-o mHorizontalAxis:Landroid/widget/GridLayout$Axis;

.field greylist-max-o mLastLayoutParamsHashCode:I

.field greylist-max-o mOrientation:I

.field greylist-max-o mPrinter:Landroid/util/Printer;

.field greylist-max-o mUseDefaultMargins:Z

.field final greylist-max-o mVerticalAxis:Landroid/widget/GridLayout$Axis;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhandleInvalidParams(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 254
    new-instance v0, Landroid/util/LogPrinter;

    const-class v1, Landroid/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    .line 255
    new-instance v0, Landroid/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    .line 2824
    new-instance v0, Landroid/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    .line 2840
    new-instance v0, Landroid/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    .line 2856
    new-instance v0, Landroid/widget/GridLayout$4;

    invoke-direct {v0}, Landroid/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    .line 2872
    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    .line 2878
    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    .line 2884
    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    .line 2890
    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    .line 2910
    sget-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    .line 2916
    sget-object v0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    .line 2923
    new-instance v0, Landroid/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    .line 2942
    new-instance v0, Landroid/widget/GridLayout$7;

    invoke-direct {v0}, Landroid/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    .line 2998
    new-instance v0, Landroid/widget/GridLayout$8;

    invoke-direct {v0}, Landroid/widget/GridLayout$8;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 294
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 298
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 302
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 305
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 281
    new-instance v0, Landroid/widget/GridLayout$Axis;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout-IA;)V

    iput-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 282
    new-instance v0, Landroid/widget/GridLayout$Axis;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout-IA;)V

    iput-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .line 283
    iput v3, p0, Landroid/widget/GridLayout;->mOrientation:I

    .line 284
    iput-boolean v3, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    .line 285
    iput v1, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    .line 287
    iput v3, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 288
    sget-object v0, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    iput-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x105015d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    .line 307
    sget-object v0, Lcom/android/internal/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 309
    .local v8, "a":Landroid/content/res/TypedArray;
    sget-object v6, Lcom/android/internal/R$styleable;->GridLayout:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v5, "context":Landroid/content/Context;
    .local v7, "attrs":Landroid/util/AttributeSet;
    .local v9, "defStyleAttr":I
    .local v10, "defStyleRes":I
    invoke-virtual/range {v4 .. v10}, Landroid/widget/GridLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 312
    const/high16 p1, -0x80000000

    :try_start_3f
    invoke-virtual {v8, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 313
    const/4 p2, 0x3

    invoke-virtual {v8, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 314
    invoke-virtual {v8, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setOrientation(I)V

    .line 315
    const/4 p1, 0x5

    invoke-virtual {v8, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 316
    const/4 p1, 0x6

    invoke-virtual {v8, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setAlignmentMode(I)V

    .line 317
    const/4 p1, 0x2

    invoke-virtual {v8, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 318
    const/4 p1, 0x4

    invoke-virtual {v8, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_75
    .catchall {:try_start_3f .. :try_end_75} :catchall_7a

    .line 320
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 321
    nop

    .line 322
    return-void

    .line 320
    :catchall_7a
    move-exception v0

    move-object p1, v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 321
    throw p1
.end method

.method static greylist-max-o adjust(II)I
    .registers 4
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .line 1072
    add-int v0, p0, p1

    .line 1073
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1072
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method static greylist-max-o append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 659
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 660
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 662
    return-object v0
.end method

.method static greylist-max-o canStretch(I)Z
    .registers 2
    .param p0, "flexibility"    # I

    .line 3016
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V
    .registers 11
    .param p1, "lp"    # Landroid/widget/GridLayout$LayoutParams;
    .param p2, "horizontal"    # Z

    .line 865
    if-eqz p2, :cond_5

    const-string v0, "column"

    goto :goto_8

    :cond_5
    const-string/jumbo v0, "row"

    .line 866
    .local v0, "groupName":Ljava/lang/String;
    :goto_8
    if-eqz p2, :cond_d

    iget-object v1, p1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_f

    :cond_d
    iget-object v1, p1, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 867
    .local v1, "spec":Landroid/widget/GridLayout$Spec;
    :goto_f
    iget-object v2, v1, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 868
    .local v2, "span":Landroid/widget/GridLayout$Interval;
    iget v3, v2, Landroid/widget/GridLayout$Interval;->min:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_31

    iget v3, v2, Landroid/widget/GridLayout$Interval;->min:I

    if-gez v3, :cond_31

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " indices must be positive"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 871
    :cond_31
    if-eqz p2, :cond_36

    iget-object v3, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_38

    :cond_36
    iget-object v3, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .line 872
    .local v3, "axis":Landroid/widget/GridLayout$Axis;
    :goto_38
    iget v5, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 873
    .local v5, "count":I
    if-eq v5, v4, :cond_84

    .line 874
    iget v4, v2, Landroid/widget/GridLayout$Interval;->max:I

    const-string v6, " count"

    if-le v4, v5, :cond_60

    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 878
    :cond_60
    invoke-virtual {v2}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v4

    if-le v4, v5, :cond_84

    .line 879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " span mustn\'t exceed the "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 882
    :cond_84
    return-void
.end method

.method private static greylist-max-o clip(Landroid/widget/GridLayout$Interval;ZI)I
    .registers 6
    .param p0, "minorRange"    # Landroid/widget/GridLayout$Interval;
    .param p1, "minorWasDefined"    # Z
    .param p2, "count"    # I

    .line 761
    invoke-virtual {p0}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v0

    .line 762
    .local v0, "size":I
    if-nez p2, :cond_7

    .line 763
    return v0

    .line 765
    :cond_7
    if-eqz p1, :cond_10

    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 766
    .local v1, "min":I
    :goto_11
    sub-int v2, p2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private greylist-max-o computeLayoutParamsHashCode()I
    .registers 8

    .line 1010
    const/4 v0, 0x1

    .line 1011
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_6
    if-ge v1, v2, :cond_26

    .line 1012
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1013
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_15

    goto :goto_23

    .line 1014
    :cond_15
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$LayoutParams;

    .line 1015
    .local v4, "lp":Landroid/widget/GridLayout$LayoutParams;
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v4}, Landroid/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    move v0, v5

    .line 1011
    .end local v3    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1017
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_26
    return v0
.end method

.method private greylist-max-o consistencyCheck()V
    .registers 3

    .line 1021
    iget v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_e

    .line 1022
    invoke-direct {p0}, Landroid/widget/GridLayout;->validateLayoutParams()V

    .line 1023
    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    goto :goto_23

    .line 1024
    :cond_e
    iget v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 1025
    iget-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1027
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 1028
    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    .line 1030
    :cond_23
    :goto_23
    return-void
.end method

.method private static greylist-max-o createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;
    .registers 3
    .param p0, "ltr"    # Landroid/widget/GridLayout$Alignment;
    .param p1, "rtl"    # Landroid/widget/GridLayout$Alignment;

    .line 2893
    new-instance v0, Landroid/widget/GridLayout$5;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$5;-><init>(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method private greylist-max-o drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .registers 24
    .param p1, "graphics"    # Landroid/graphics/Canvas;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 922
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 923
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getWidth()I

    move-result v4

    .line 924
    .local v4, "width":I
    sub-int v5, v4, v0

    int-to-float v7, v5

    int-to-float v8, v1

    sub-int v5, v4, v2

    int-to-float v9, v5

    int-to-float v10, v3

    move-object/from16 v6, p1

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 925
    .end local v4    # "width":I
    goto :goto_2d

    .line 926
    :cond_22
    int-to-float v12, v0

    int-to-float v13, v1

    int-to-float v14, v2

    int-to-float v15, v3

    move-object/from16 v11, p1

    move-object/from16 v16, p6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 928
    :goto_2d
    return-void
.end method

.method private static greylist-max-o fits([IIII)Z
    .registers 7
    .param p0, "a"    # [I
    .param p1, "value"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 738
    array-length v0, p0

    const/4 v1, 0x0

    if-le p3, v0, :cond_5

    .line 739
    return v1

    .line 741
    :cond_5
    move v0, p2

    .local v0, "i":I
    :goto_6
    if-ge v0, p3, :cond_10

    .line 742
    aget v2, p0, v0

    if-le v2, p1, :cond_d

    .line 743
    return v1

    .line 741
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 746
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o getAlignment(IZ)Landroid/widget/GridLayout$Alignment;
    .registers 6
    .param p0, "gravity"    # I
    .param p1, "horizontal"    # Z

    .line 666
    if-eqz p1, :cond_4

    const/4 v0, 0x7

    goto :goto_6

    :cond_4
    const/16 v0, 0x70

    .line 667
    .local v0, "mask":I
    :goto_6
    if-eqz p1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    const/4 v1, 0x4

    .line 668
    .local v1, "shift":I
    :goto_b
    and-int v2, p0, v0

    shr-int/2addr v2, v1

    .line 669
    .local v2, "flags":I
    sparse-switch v2, :sswitch_data_30

    .line 683
    sget-object v3, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    return-object v3

    .line 681
    :sswitch_14
    sget-object v3, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    return-object v3

    .line 679
    :sswitch_17
    sget-object v3, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    return-object v3

    .line 675
    :sswitch_1a
    sget-object v3, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-object v3

    .line 673
    :sswitch_1d
    if-eqz p1, :cond_22

    sget-object v3, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    goto :goto_24

    :cond_22
    sget-object v3, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    :goto_24
    return-object v3

    .line 671
    :sswitch_25
    if-eqz p1, :cond_2a

    sget-object v3, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    goto :goto_2c

    :cond_2a
    sget-object v3, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    :goto_2c
    return-object v3

    .line 677
    :sswitch_2d
    sget-object v3, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    return-object v3

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_2d
        0x3 -> :sswitch_25
        0x5 -> :sswitch_1d
        0x7 -> :sswitch_1a
        0x800003 -> :sswitch_17
        0x800005 -> :sswitch_14
    .end sparse-switch
.end method

.method private greylist-max-o getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I
    .registers 13
    .param p1, "c"    # Landroid/view/View;
    .param p2, "p"    # Landroid/widget/GridLayout$LayoutParams;
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .line 700
    iget-boolean v0, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 701
    return v1

    .line 703
    :cond_6
    if-eqz p3, :cond_b

    iget-object v0, p2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_d

    :cond_b
    iget-object v0, p2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 704
    .local v0, "spec":Landroid/widget/GridLayout$Spec;
    :goto_d
    if-eqz p3, :cond_12

    iget-object v2, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_14

    :cond_12
    iget-object v2, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .line 705
    .local v2, "axis":Landroid/widget/GridLayout$Axis;
    :goto_14
    iget-object v3, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 706
    .local v3, "span":Landroid/widget/GridLayout$Interval;
    const/4 v4, 0x1

    if-eqz p3, :cond_25

    invoke-virtual {p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_25

    if-nez p4, :cond_23

    move v5, v4

    goto :goto_26

    :cond_23
    move v5, v1

    goto :goto_26

    :cond_25
    move v5, p4

    .line 707
    .local v5, "leading1":Z
    :goto_26
    if-eqz v5, :cond_2d

    iget v6, v3, Landroid/widget/GridLayout$Interval;->min:I

    if-nez v6, :cond_36

    goto :goto_35

    :cond_2d
    iget v6, v3, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {v2}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_36

    :goto_35
    move v1, v4

    .line 709
    .local v1, "isAtEdge":Z
    :cond_36
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v4

    return v4
.end method

.method private greylist-max-o getDefaultMargin(Landroid/view/View;ZZ)I
    .registers 6
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .line 689
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/Space;

    if-ne v0, v1, :cond_a

    .line 690
    const/4 v0, 0x0

    return v0

    .line 692
    :cond_a
    iget v0, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private greylist-max-o getDefaultMargin(Landroid/view/View;ZZZ)I
    .registers 6
    .param p1, "c"    # Landroid/view/View;
    .param p2, "isAtEdge"    # Z
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .line 696
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getMargin(Landroid/view/View;ZZ)I
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .line 721
    iget v0, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 722
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v0

    return v0

    .line 724
    :cond_a
    if-eqz p2, :cond_f

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_11

    :cond_f
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .line 725
    .local v0, "axis":Landroid/widget/GridLayout$Axis;
    :goto_11
    if-eqz p3, :cond_18

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v1

    goto :goto_1c

    :cond_18
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v1

    .line 726
    .local v1, "margins":[I
    :goto_1c
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 727
    .local v2, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_25

    iget-object v3, v2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_27

    :cond_25
    iget-object v3, v2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 728
    .local v3, "spec":Landroid/widget/GridLayout$Spec;
    :goto_27
    iget-object v4, v3, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    if-eqz p3, :cond_2e

    iget v4, v4, Landroid/widget/GridLayout$Interval;->min:I

    goto :goto_30

    :cond_2e
    iget v4, v4, Landroid/widget/GridLayout$Interval;->max:I

    .line 729
    .local v4, "index":I
    :goto_30
    aget v5, v1, v4

    return v5
.end method

.method private greylist-max-o getMeasurement(Landroid/view/View;Z)I
    .registers 4
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .line 1115
    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_b
    return v0
.end method

.method private greylist-max-o getTotalMargin(Landroid/view/View;Z)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .line 734
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static greylist-max-o handleInvalidParams(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 861
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o invalidateStructure()V
    .registers 2

    .line 828
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 829
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 830
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 832
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 833
    return-void
.end method

.method private greylist-max-o invalidateValues()V
    .registers 2

    .line 838
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_12

    .line 839
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 840
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 842
    :cond_12
    return-void
.end method

.method static greylist-max-o max2([II)I
    .registers 6
    .param p0, "a"    # [I
    .param p1, "valueIfEmpty"    # I

    .line 650
    move v0, p1

    .line 651
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    .local v2, "N":I
    :goto_3
    if-ge v1, v2, :cond_e

    .line 652
    aget v3, p0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 654
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_e
    return v0
.end method

.method private greylist-max-o measureChildWithMargins2(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "parentHeightSpec"    # I
    .param p4, "childWidth"    # I
    .param p5, "childHeight"    # I

    .line 1037
    nop

    .line 1038
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v0

    .line 1037
    invoke-static {p2, v0, p4}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1039
    .local v0, "childWidthSpec":I
    nop

    .line 1040
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    .line 1039
    invoke-static {p3, v1, p5}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 1041
    .local v1, "childHeightSpec":I
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1042
    return-void
.end method

.method private greylist-max-o measureChildrenWithMargins(IIZ)V
    .registers 19
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "firstPass"    # Z

    .line 1046
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    .local v1, "N":I
    :goto_5
    if-ge v0, v1, :cond_7a

    .line 1047
    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1048
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_15

    goto/16 :goto_77

    .line 1049
    :cond_15
    invoke-virtual {p0, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v8

    .line 1050
    .local v8, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p3, :cond_28

    .line 1051
    iget v6, v8, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v7, v8, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_77

    .line 1053
    :cond_28
    iget v4, p0, Landroid/widget/GridLayout;->mOrientation:I

    if-nez v4, :cond_2e

    const/4 v4, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    move v9, v4

    .line 1054
    .local v9, "horizontal":Z
    if-eqz v9, :cond_35

    iget-object v4, v8, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_37

    :cond_35
    iget-object v4, v8, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_37
    move-object v10, v4

    .line 1055
    .local v10, "spec":Landroid/widget/GridLayout$Spec;
    invoke-static {v10, v9}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v4

    sget-object v5, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    if-ne v4, v5, :cond_77

    .line 1056
    iget-object v11, v10, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1057
    .local v11, "span":Landroid/widget/GridLayout$Interval;
    if-eqz v9, :cond_47

    iget-object v4, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_49

    :cond_47
    iget-object v4, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_49
    move-object v12, v4

    .line 1058
    .local v12, "axis":Landroid/widget/GridLayout$Axis;
    invoke-virtual {v12}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v13

    .line 1059
    .local v13, "locations":[I
    iget v4, v11, Landroid/widget/GridLayout$Interval;->max:I

    aget v4, v13, v4

    iget v5, v11, Landroid/widget/GridLayout$Interval;->min:I

    aget v5, v13, v5

    sub-int v14, v4, v5

    .line 1060
    .local v14, "cellSize":I
    invoke-direct {p0, v3, v9}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v4

    sub-int v6, v14, v4

    .line 1061
    .local v6, "viewSize":I
    if-eqz v9, :cond_6b

    .line 1062
    iget v7, v8, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_77

    .line 1064
    :cond_6b
    move v7, v6

    .end local v6    # "viewSize":I
    .local v7, "viewSize":I
    iget v6, v8, Landroid/widget/GridLayout$LayoutParams;->width:I

    move-object v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    move v6, v7

    .line 1046
    .end local v3    # "c":Landroid/view/View;
    .end local v7    # "viewSize":I
    .end local v8    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v9    # "horizontal":Z
    .end local v10    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v11    # "span":Landroid/widget/GridLayout$Interval;
    .end local v12    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v13    # "locations":[I
    .end local v14    # "cellSize":I
    :cond_77
    :goto_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1069
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_7a
    return-void
.end method

.method private static greylist-max-o procrusteanFill([IIII)V
    .registers 7
    .param p0, "a"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    .line 750
    array-length v0, p0

    .line 751
    .local v0, "length":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 752
    return-void
.end method

.method private static greylist-max-o setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V
    .registers 7
    .param p0, "lp"    # Landroid/widget/GridLayout$LayoutParams;
    .param p1, "row"    # I
    .param p2, "rowSpan"    # I
    .param p3, "col"    # I
    .param p4, "colSpan"    # I

    .line 755
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V

    .line 756
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V

    .line 757
    return-void
.end method

.method public static whitelist spec(I)Landroid/widget/GridLayout$Spec;
    .registers 2
    .param p0, "start"    # I

    .line 2759
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(IF)Landroid/widget/GridLayout$Spec;
    .registers 3
    .param p0, "start"    # I
    .param p1, "weight"    # F

    .line 2697
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IIF)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(II)Landroid/widget/GridLayout$Spec;
    .registers 3
    .param p0, "start"    # I
    .param p1, "size"    # I

    .line 2743
    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(IIF)Landroid/widget/GridLayout$Spec;
    .registers 4
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "weight"    # F

    .line 2687
    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0, p2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .registers 4
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/widget/GridLayout$Alignment;

    .line 2708
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;
    .registers 11
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p3, "weight"    # F

    .line 2663
    new-instance v0, Landroid/widget/GridLayout$Spec;

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const/4 v6, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .end local p0    # "start":I
    .end local p1    # "size":I
    .end local p2    # "alignment":Landroid/widget/GridLayout$Alignment;
    .end local p3    # "weight":F
    .local v2, "start":I
    .local v3, "size":I
    .local v4, "alignment":Landroid/widget/GridLayout$Alignment;
    .local v5, "weight":F
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;FLandroid/widget/GridLayout-IA;)V

    return-object v0
.end method

.method public static whitelist spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .registers 3
    .param p0, "start"    # I
    .param p1, "alignment"    # Landroid/widget/GridLayout$Alignment;

    .line 2726
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;
    .registers 4
    .param p0, "start"    # I
    .param p1, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p2, "weight"    # F

    .line 2674
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o validateLayoutParams()V
    .registers 20

    .line 771
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridLayout;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v2

    .line 772
    .local v1, "horizontal":Z
    :goto_a
    if-eqz v1, :cond_f

    iget-object v3, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_11

    :cond_f
    iget-object v3, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .line 773
    .local v3, "axis":Landroid/widget/GridLayout$Axis;
    :goto_11
    iget v4, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_19

    iget v2, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 775
    .local v2, "count":I
    :cond_19
    const/4 v4, 0x0

    .line 776
    .local v4, "major":I
    const/4 v5, 0x0

    .line 777
    .local v5, "minor":I
    new-array v6, v2, [I

    .line 779
    .local v6, "maxSizes":[I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v8

    .local v8, "N":I
    :goto_22
    if-ge v7, v8, :cond_a1

    .line 780
    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/GridLayout$LayoutParams;

    .line 782
    .local v9, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz v1, :cond_33

    iget-object v10, v9, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_35

    :cond_33
    iget-object v10, v9, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 783
    .local v10, "majorSpec":Landroid/widget/GridLayout$Spec;
    :goto_35
    iget-object v11, v10, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 784
    .local v11, "majorRange":Landroid/widget/GridLayout$Interval;
    iget-boolean v12, v10, Landroid/widget/GridLayout$Spec;->startDefined:Z

    .line 785
    .local v12, "majorWasDefined":Z
    invoke-virtual {v11}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v13

    .line 786
    .local v13, "majorSpan":I
    if-eqz v12, :cond_41

    .line 787
    iget v4, v11, Landroid/widget/GridLayout$Interval;->min:I

    .line 790
    :cond_41
    if-eqz v1, :cond_46

    iget-object v14, v9, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_48

    :cond_46
    iget-object v14, v9, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 791
    .local v14, "minorSpec":Landroid/widget/GridLayout$Spec;
    :goto_48
    iget-object v15, v14, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 792
    .local v15, "minorRange":Landroid/widget/GridLayout$Interval;
    iget-boolean v0, v14, Landroid/widget/GridLayout$Spec;->startDefined:Z

    .line 793
    .local v0, "minorWasDefined":Z
    move/from16 v16, v1

    .end local v1    # "horizontal":Z
    .local v16, "horizontal":Z
    invoke-static {v15, v0, v2}, Landroid/widget/GridLayout;->clip(Landroid/widget/GridLayout$Interval;ZI)I

    move-result v1

    .line 794
    .local v1, "minorSpan":I
    if-eqz v0, :cond_56

    .line 795
    iget v5, v15, Landroid/widget/GridLayout$Interval;->min:I

    .line 798
    :cond_56
    if-eqz v2, :cond_8a

    .line 800
    if-eqz v12, :cond_60

    if-nez v0, :cond_5d

    goto :goto_60

    :cond_5d
    move/from16 v17, v0

    goto :goto_80

    .line 801
    :cond_60
    :goto_60
    move/from16 v17, v0

    .end local v0    # "minorWasDefined":Z
    .local v17, "minorWasDefined":Z
    add-int v0, v5, v1

    invoke-static {v6, v4, v5, v0}, Landroid/widget/GridLayout;->fits([IIII)Z

    move-result v0

    if-nez v0, :cond_80

    .line 802
    if-eqz v17, :cond_71

    .line 803
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v17

    goto :goto_60

    .line 805
    :cond_71
    add-int v0, v5, v1

    if-gt v0, v2, :cond_7a

    .line 806
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v17

    goto :goto_60

    .line 808
    :cond_7a
    const/4 v5, 0x0

    .line 809
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v17

    goto :goto_60

    .line 814
    :cond_80
    :goto_80
    add-int v0, v5, v1

    move/from16 v18, v2

    .end local v2    # "count":I
    .local v18, "count":I
    add-int v2, v4, v13

    invoke-static {v6, v5, v0, v2}, Landroid/widget/GridLayout;->procrusteanFill([IIII)V

    goto :goto_8e

    .line 798
    .end local v17    # "minorWasDefined":Z
    .end local v18    # "count":I
    .restart local v0    # "minorWasDefined":Z
    .restart local v2    # "count":I
    :cond_8a
    move/from16 v17, v0

    move/from16 v18, v2

    .line 817
    .end local v0    # "minorWasDefined":Z
    .end local v2    # "count":I
    .restart local v17    # "minorWasDefined":Z
    .restart local v18    # "count":I
    :goto_8e
    if-eqz v16, :cond_94

    .line 818
    invoke-static {v9, v4, v13, v5, v1}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_97

    .line 820
    :cond_94
    invoke-static {v9, v5, v1, v4, v13}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    .line 823
    :goto_97
    add-int/2addr v5, v1

    .line 779
    .end local v1    # "minorSpan":I
    .end local v9    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v10    # "majorSpec":Landroid/widget/GridLayout$Spec;
    .end local v11    # "majorRange":Landroid/widget/GridLayout$Interval;
    .end local v12    # "majorWasDefined":Z
    .end local v13    # "majorSpan":I
    .end local v14    # "minorSpec":Landroid/widget/GridLayout$Spec;
    .end local v15    # "minorRange":Landroid/widget/GridLayout$Interval;
    .end local v17    # "minorWasDefined":Z
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    goto :goto_22

    .line 825
    .end local v7    # "i":I
    .end local v8    # "N":I
    .end local v16    # "horizontal":Z
    .end local v18    # "count":I
    .local v1, "horizontal":Z
    .restart local v2    # "count":I
    :cond_a1
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 5
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 886
    instance-of v0, p1, Landroid/widget/GridLayout$LayoutParams;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 887
    return v1

    .line 889
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    .line 891
    .local v0, "lp":Landroid/widget/GridLayout$LayoutParams;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    .line 892
    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    .line 894
    return v2
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 174
    invoke-virtual {p0}, Landroid/widget/GridLayout;->generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;
    .registers 2

    .line 899
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 904
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;
    .registers 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 909
    sget-boolean v0, Landroid/widget/GridLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1e

    .line 910
    instance-of v0, p1, Landroid/widget/GridLayout$LayoutParams;

    if-eqz v0, :cond_11

    .line 911
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$LayoutParams;)V

    return-object v0

    .line 912
    :cond_11
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1e

    .line 913
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 916
    :cond_1e
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1225
    const-class v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAlignmentMode()I
    .registers 2

    .line 522
    iget v0, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    return v0
.end method

.method public whitelist getColumnCount()I
    .registers 2

    .line 437
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method final greylist-max-o getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;
    .registers 3
    .param p1, "c"    # Landroid/view/View;

    .line 857
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method greylist-max-o getMargin1(Landroid/view/View;ZZ)I
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .line 713
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 714
    .local v0, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_e

    .line 715
    if-eqz p3, :cond_b

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_15

    :cond_b
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_15

    .line 716
    :cond_e
    if-eqz p3, :cond_13

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    goto :goto_15

    :cond_13
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    :goto_15
    nop

    .line 717
    .local v1, "margin":I
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1f

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I

    move-result v2

    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    return v2
.end method

.method final greylist-max-o getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .registers 5
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .line 1119
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 1120
    const/4 v0, 0x0

    return v0

    .line 1122
    :cond_a
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getOrientation()I
    .registers 2

    .line 341
    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    return v0
.end method

.method public greylist-max-o getPrinter()Landroid/util/Printer;
    .registers 2

    .line 630
    iget-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    return-object v0
.end method

.method public whitelist getRowCount()I
    .registers 2

    .line 402
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public whitelist getUseDefaultMargins()Z
    .registers 2

    .line 470
    iget-boolean v0, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    return v0
.end method

.method public whitelist isColumnOrderPreserved()Z
    .registers 2

    .line 595
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method public whitelist isRowOrderPreserved()Z
    .registers 2

    .line 558
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o onChildVisibilityChanged(Landroid/view/View;II)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    .line 1003
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 1004
    const/16 v0, 0x8

    if-eq p2, v0, :cond_9

    if-ne p3, v0, :cond_c

    .line 1005
    :cond_9
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 1007
    :cond_c
    return-void
.end method

.method protected greylist-max-o onDebugDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 953
    move-object/from16 v0, p0

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 954
    .local v6, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 955
    const/16 v1, 0x32

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 957
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v7

    .line 959
    .local v7, "insets":Landroid/graphics/Insets;
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v1

    iget v2, v7, Landroid/graphics/Insets;->top:I

    add-int v3, v1, v2

    .line 960
    .local v3, "top":I
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v7, Landroid/graphics/Insets;->left:I

    add-int v8, v1, v2

    .line 961
    .local v8, "left":I
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v7, Landroid/graphics/Insets;->right:I

    sub-int v9, v1, v2

    .line 962
    .local v9, "right":I
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v7, Landroid/graphics/Insets;->bottom:I

    sub-int v5, v1, v2

    .line 964
    .local v5, "bottom":I
    iget-object v1, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    iget-object v10, v1, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 965
    .local v10, "xs":[I
    if-eqz v10, :cond_62

    .line 966
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v11, v10

    move v12, v1

    .end local v1    # "i":I
    .local v11, "length":I
    .local v12, "i":I
    :goto_4e
    if-ge v12, v11, :cond_5f

    .line 967
    aget v1, v10, v12

    add-int v2, v8, v1

    .line 968
    .local v2, "x":I
    move v4, v2

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 966
    move v13, v3

    move v14, v5

    .end local v2    # "x":I
    .end local v3    # "top":I
    .end local v5    # "bottom":I
    .local v13, "top":I
    .local v14, "bottom":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_4e

    .end local v13    # "top":I
    .end local v14    # "bottom":I
    .restart local v3    # "top":I
    .restart local v5    # "bottom":I
    :cond_5f
    move v13, v3

    move v14, v5

    .end local v3    # "top":I
    .end local v5    # "bottom":I
    .restart local v13    # "top":I
    .restart local v14    # "bottom":I
    goto :goto_64

    .line 965
    .end local v11    # "length":I
    .end local v12    # "i":I
    .end local v13    # "top":I
    .end local v14    # "bottom":I
    .restart local v3    # "top":I
    .restart local v5    # "bottom":I
    :cond_62
    move v13, v3

    move v14, v5

    .line 972
    .end local v3    # "top":I
    .end local v5    # "bottom":I
    .restart local v13    # "top":I
    .restart local v14    # "bottom":I
    :goto_64
    iget-object v1, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    iget-object v11, v1, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 973
    .local v11, "ys":[I
    if-eqz v11, :cond_83

    .line 974
    const/4 v1, 0x0

    .restart local v1    # "i":I
    array-length v12, v11

    move v15, v1

    .end local v1    # "i":I
    .local v12, "length":I
    .local v15, "i":I
    :goto_6d
    if-ge v15, v12, :cond_80

    .line 975
    aget v1, v11, v15

    add-int v3, v13, v1

    .line 976
    .local v3, "y":I
    move v5, v3

    move-object/from16 v1, p1

    move v2, v8

    move v4, v9

    .end local v8    # "left":I
    .end local v9    # "right":I
    .local v2, "left":I
    .local v4, "right":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 974
    .end local v3    # "y":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_6d

    .end local v2    # "left":I
    .end local v4    # "right":I
    .restart local v8    # "left":I
    .restart local v9    # "right":I
    :cond_80
    move v2, v8

    move v4, v9

    .end local v8    # "left":I
    .end local v9    # "right":I
    .restart local v2    # "left":I
    .restart local v4    # "right":I
    goto :goto_85

    .line 973
    .end local v2    # "left":I
    .end local v4    # "right":I
    .end local v12    # "length":I
    .end local v15    # "i":I
    .restart local v8    # "left":I
    .restart local v9    # "right":I
    :cond_83
    move v2, v8

    move v4, v9

    .line 980
    .end local v8    # "left":I
    .end local v9    # "right":I
    .restart local v2    # "left":I
    .restart local v4    # "right":I
    :goto_85
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 981
    return-void
.end method

.method protected greylist-max-o onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 936
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 937
    .local v0, "lp":Landroid/widget/GridLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 938
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 939
    .local v2, "c":Landroid/view/View;
    nop

    .line 940
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v4

    .line 941
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v6

    .line 942
    invoke-virtual {p0, v2, v3, v5}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v3

    .line 943
    invoke-virtual {p0, v2, v5, v5}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    .line 939
    invoke-virtual {v0, v4, v6, v3, v5}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 944
    invoke-virtual {v0, v2, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 937
    .end local v2    # "c":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 946
    .end local v1    # "i":I
    :cond_2c
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 53
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1147
    move-object/from16 v1, p0

    invoke-direct {v1}, Landroid/widget/GridLayout;->consistencyCheck()V

    .line 1149
    sub-int v6, p4, p2

    .line 1150
    .local v6, "targetWidth":I
    sub-int v7, p5, p3

    .line 1152
    .local v7, "targetHeight":I
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v8

    .line 1153
    .local v8, "paddingLeft":I
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v9

    .line 1154
    .local v9, "paddingTop":I
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v10

    .line 1155
    .local v10, "paddingRight":I
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v11

    .line 1157
    .local v11, "paddingBottom":I
    iget-object v0, v1, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    sub-int v2, v6, v8

    sub-int/2addr v2, v10

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout$Axis;->layout(I)V

    .line 1158
    iget-object v0, v1, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    sub-int v2, v7, v9

    sub-int/2addr v2, v11

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout$Axis;->layout(I)V

    .line 1160
    iget-object v0, v1, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v12

    .line 1161
    .local v12, "hLocations":[I
    iget-object v0, v1, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v13

    .line 1163
    .local v13, "vLocations":[I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v14

    move v15, v0

    .end local v0    # "i":I
    .local v14, "N":I
    .local v15, "i":I
    :goto_3b
    if-ge v15, v14, :cond_172

    .line 1164
    invoke-virtual {v1, v15}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1165
    .local v2, "c":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_51

    move/from16 v16, v6

    move/from16 v26, v7

    move/from16 v41, v8

    goto/16 :goto_166

    .line 1166
    :cond_51
    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 1167
    .local v0, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-object v3, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1168
    .local v3, "columnSpec":Landroid/widget/GridLayout$Spec;
    iget-object v4, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1170
    .local v4, "rowSpec":Landroid/widget/GridLayout$Spec;
    iget-object v5, v3, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1171
    .local v5, "colSpan":Landroid/widget/GridLayout$Interval;
    move/from16 v16, v6

    .end local v6    # "targetWidth":I
    .local v16, "targetWidth":I
    iget-object v6, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1173
    .local v6, "rowSpan":Landroid/widget/GridLayout$Interval;
    move-object/from16 v17, v0

    .end local v0    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .local v17, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget v0, v5, Landroid/widget/GridLayout$Interval;->min:I

    aget v18, v12, v0

    .line 1174
    .local v18, "x1":I
    iget v0, v6, Landroid/widget/GridLayout$Interval;->min:I

    aget v19, v13, v0

    .line 1176
    .local v19, "y1":I
    iget v0, v5, Landroid/widget/GridLayout$Interval;->max:I

    aget v20, v12, v0

    .line 1177
    .local v20, "x2":I
    iget v0, v6, Landroid/widget/GridLayout$Interval;->max:I

    aget v21, v13, v0

    .line 1179
    .local v21, "y2":I
    sub-int v22, v20, v18

    .line 1180
    .local v22, "cellWidth":I
    sub-int v23, v21, v19

    .line 1182
    .local v23, "cellHeight":I
    const/4 v0, 0x1

    move-object/from16 v24, v5

    .end local v5    # "colSpan":Landroid/widget/GridLayout$Interval;
    .local v24, "colSpan":Landroid/widget/GridLayout$Interval;
    invoke-direct {v1, v2, v0}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v5

    .line 1183
    .local v5, "pWidth":I
    const/4 v0, 0x0

    move/from16 v26, v5

    .end local v5    # "pWidth":I
    .local v26, "pWidth":I
    invoke-direct {v1, v2, v0}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v5

    .line 1185
    .local v5, "pHeight":I
    move/from16 v28, v5

    const/4 v0, 0x1

    move-object v5, v3

    .end local v3    # "columnSpec":Landroid/widget/GridLayout$Spec;
    .local v5, "columnSpec":Landroid/widget/GridLayout$Spec;
    .local v28, "pHeight":I
    invoke-static {v5, v0}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v3

    .line 1186
    .local v3, "hAlign":Landroid/widget/GridLayout$Alignment;
    move-object/from16 v29, v5

    const/4 v0, 0x0

    .end local v5    # "columnSpec":Landroid/widget/GridLayout$Spec;
    .local v29, "columnSpec":Landroid/widget/GridLayout$Spec;
    invoke-static {v4, v0}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v5

    .line 1188
    .local v5, "vAlign":Landroid/widget/GridLayout$Alignment;
    iget-object v0, v1, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Bounds;

    .line 1189
    .local v0, "boundsX":Landroid/widget/GridLayout$Bounds;
    move-object/from16 v30, v4

    .end local v4    # "rowSpec":Landroid/widget/GridLayout$Spec;
    .local v30, "rowSpec":Landroid/widget/GridLayout$Spec;
    iget-object v4, v1, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$Bounds;

    .line 1192
    .local v4, "boundsY":Landroid/widget/GridLayout$Bounds;
    move-object/from16 v31, v6

    const/4 v6, 0x1

    .end local v6    # "rowSpan":Landroid/widget/GridLayout$Interval;
    .local v31, "rowSpan":Landroid/widget/GridLayout$Interval;
    invoke-virtual {v0, v6}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v25

    sub-int v6, v22, v25

    invoke-virtual {v3, v2, v6}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v6

    .line 1193
    .local v6, "gravityOffsetX":I
    move-object/from16 v25, v0

    const/4 v0, 0x1

    .end local v0    # "boundsX":Landroid/widget/GridLayout$Bounds;
    .local v25, "boundsX":Landroid/widget/GridLayout$Bounds;
    invoke-virtual {v4, v0}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v32

    sub-int v0, v23, v32

    invoke-virtual {v5, v2, v0}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v32

    .line 1195
    .local v32, "gravityOffsetY":I
    const/4 v0, 0x1

    invoke-direct {v1, v2, v0, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v33

    .line 1196
    .local v33, "leftMargin":I
    move-object/from16 v34, v3

    const/4 v3, 0x0

    .end local v3    # "hAlign":Landroid/widget/GridLayout$Alignment;
    .local v34, "hAlign":Landroid/widget/GridLayout$Alignment;
    invoke-direct {v1, v2, v3, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v27

    .line 1197
    .local v27, "topMargin":I
    invoke-direct {v1, v2, v0, v3}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v35

    .line 1198
    .local v35, "rightMargin":I
    invoke-direct {v1, v2, v3, v3}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v36

    .line 1200
    .local v36, "bottomMargin":I
    add-int v37, v33, v35

    .line 1201
    .local v37, "sumMarginsX":I
    add-int v38, v27, v36

    .line 1204
    .local v38, "sumMarginsY":I
    move-object v0, v4

    .end local v4    # "boundsY":Landroid/widget/GridLayout$Bounds;
    .local v0, "boundsY":Landroid/widget/GridLayout$Bounds;
    add-int v4, v26, v37

    move-object v3, v5

    .end local v5    # "vAlign":Landroid/widget/GridLayout$Alignment;
    .local v3, "vAlign":Landroid/widget/GridLayout$Alignment;
    const/4 v5, 0x1

    move-object/from16 v46, v34

    move-object/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v25, v6

    move/from16 v6, v26

    move/from16 v26, v7

    move/from16 v7, v28

    move-object/from16 v28, v3

    move-object/from16 v3, v46

    .local v0, "boundsX":Landroid/widget/GridLayout$Bounds;
    .local v3, "hAlign":Landroid/widget/GridLayout$Alignment;
    .local v6, "pWidth":I
    .local v7, "pHeight":I
    .local v25, "gravityOffsetX":I
    .local v26, "targetHeight":I
    .local v28, "vAlign":Landroid/widget/GridLayout$Alignment;
    .local v34, "boundsY":Landroid/widget/GridLayout$Bounds;
    invoke-virtual/range {v0 .. v5}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    move-result v39

    .line 1205
    move-object/from16 v40, v0

    .end local v0    # "boundsX":Landroid/widget/GridLayout$Bounds;
    .local v39, "alignmentOffsetX":I
    .local v40, "boundsX":Landroid/widget/GridLayout$Bounds;
    add-int v4, v7, v38

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v41, v8

    move-object/from16 v0, v34

    move-object v8, v3

    move-object/from16 v3, v28

    .end local v28    # "vAlign":Landroid/widget/GridLayout$Alignment;
    .end local v34    # "boundsY":Landroid/widget/GridLayout$Bounds;
    .local v0, "boundsY":Landroid/widget/GridLayout$Bounds;
    .local v3, "vAlign":Landroid/widget/GridLayout$Alignment;
    .local v8, "hAlign":Landroid/widget/GridLayout$Alignment;
    .local v41, "paddingLeft":I
    invoke-virtual/range {v0 .. v5}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    move-result v4

    .line 1207
    .local v4, "alignmentOffsetY":I
    sub-int v1, v22, v37

    invoke-virtual {v8, v2, v6, v1}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v1

    .line 1208
    .local v1, "width":I
    sub-int v5, v23, v38

    invoke-virtual {v3, v2, v7, v5}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v5

    .line 1210
    .local v5, "height":I
    add-int v28, v18, v25

    add-int v28, v28, v39

    .line 1212
    .local v28, "dx":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v34

    if-nez v34, :cond_126

    add-int v34, v41, v33

    add-int v34, v34, v28

    goto :goto_12e

    .line 1213
    :cond_126
    sub-int v34, v16, v1

    sub-int v34, v34, v10

    sub-int v34, v34, v35

    sub-int v34, v34, v28

    :goto_12e
    move/from16 v42, v34

    .line 1214
    .local v42, "cx":I
    add-int v34, v9, v19

    add-int v34, v34, v32

    add-int v34, v34, v4

    move-object/from16 v43, v0

    .end local v0    # "boundsY":Landroid/widget/GridLayout$Bounds;
    .local v43, "boundsY":Landroid/widget/GridLayout$Bounds;
    add-int v0, v34, v27

    .line 1216
    .local v0, "cy":I
    move-object/from16 v34, v3

    .end local v3    # "vAlign":Landroid/widget/GridLayout$Alignment;
    .local v34, "vAlign":Landroid/widget/GridLayout$Alignment;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-ne v1, v3, :cond_14c

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v5, v3, :cond_149

    goto :goto_14c

    :cond_149
    move/from16 v44, v4

    goto :goto_15b

    .line 1217
    :cond_14c
    :goto_14c
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v44, v4

    .end local v4    # "alignmentOffsetY":I
    .local v44, "alignmentOffsetY":I
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 1219
    :goto_15b
    add-int v3, v42, v1

    add-int v4, v0, v5

    move/from16 v45, v1

    move/from16 v1, v42

    .end local v42    # "cx":I
    .local v1, "cx":I
    .local v45, "width":I
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1163
    .end local v0    # "cy":I
    .end local v1    # "cx":I
    .end local v2    # "c":Landroid/view/View;
    .end local v5    # "height":I
    .end local v6    # "pWidth":I
    .end local v7    # "pHeight":I
    .end local v8    # "hAlign":Landroid/widget/GridLayout$Alignment;
    .end local v17    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v18    # "x1":I
    .end local v19    # "y1":I
    .end local v20    # "x2":I
    .end local v21    # "y2":I
    .end local v22    # "cellWidth":I
    .end local v23    # "cellHeight":I
    .end local v24    # "colSpan":Landroid/widget/GridLayout$Interval;
    .end local v25    # "gravityOffsetX":I
    .end local v27    # "topMargin":I
    .end local v28    # "dx":I
    .end local v29    # "columnSpec":Landroid/widget/GridLayout$Spec;
    .end local v30    # "rowSpec":Landroid/widget/GridLayout$Spec;
    .end local v31    # "rowSpan":Landroid/widget/GridLayout$Interval;
    .end local v32    # "gravityOffsetY":I
    .end local v33    # "leftMargin":I
    .end local v34    # "vAlign":Landroid/widget/GridLayout$Alignment;
    .end local v35    # "rightMargin":I
    .end local v36    # "bottomMargin":I
    .end local v37    # "sumMarginsX":I
    .end local v38    # "sumMarginsY":I
    .end local v39    # "alignmentOffsetX":I
    .end local v40    # "boundsX":Landroid/widget/GridLayout$Bounds;
    .end local v43    # "boundsY":Landroid/widget/GridLayout$Bounds;
    .end local v44    # "alignmentOffsetY":I
    .end local v45    # "width":I
    :goto_166
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v7, v26

    move/from16 v8, v41

    goto/16 :goto_3b

    .line 1221
    .end local v14    # "N":I
    .end local v15    # "i":I
    .end local v16    # "targetWidth":I
    .end local v26    # "targetHeight":I
    .end local v41    # "paddingLeft":I
    .local v6, "targetWidth":I
    .local v7, "targetHeight":I
    .local v8, "paddingLeft":I
    :cond_172
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 13
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 1078
    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    .line 1082
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 1084
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1085
    .local v0, "hPadding":I
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1087
    .local v1, "vPadding":I
    neg-int v2, v0

    invoke-static {p1, v2}, Landroid/widget/GridLayout;->adjust(II)I

    move-result v2

    .line 1088
    .local v2, "widthSpecSansPadding":I
    neg-int v3, v1

    invoke-static {p2, v3}, Landroid/widget/GridLayout;->adjust(II)I

    move-result v3

    .line 1090
    .local v3, "heightSpecSansPadding":I
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 1096
    iget v4, p0, Landroid/widget/GridLayout;->mOrientation:I

    const/4 v5, 0x0

    if-nez v4, :cond_3b

    .line 1097
    iget-object v4, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    .line 1098
    .local v4, "widthSansPadding":I
    invoke-direct {p0, v2, v3, v5}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 1099
    iget-object v6, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v6, v3}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .local v6, "heightSansPadding":I
    goto :goto_4a

    .line 1101
    .end local v4    # "widthSansPadding":I
    .end local v6    # "heightSansPadding":I
    :cond_3b
    iget-object v4, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .line 1102
    .restart local v6    # "heightSansPadding":I
    invoke-direct {p0, v2, v3, v5}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 1103
    iget-object v4, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    .line 1106
    .restart local v4    # "widthSansPadding":I
    :goto_4a
    add-int v7, v4, v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1107
    .local v7, "measuredWidth":I
    add-int v8, v6, v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1109
    .local v8, "measuredHeight":I
    nop

    .line 1110
    invoke-static {v7, p1, v5}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v9

    .line 1111
    invoke-static {v8, p2, v5}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 1109
    invoke-virtual {p0, v9, v5}, Landroid/widget/GridLayout;->setMeasuredDimension(II)V

    .line 1112
    return-void
.end method

.method protected greylist-max-o onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 847
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    invoke-virtual {p0, p2}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 850
    const-string/jumbo v0, "supplied LayoutParams are of the wrong type"

    invoke-static {v0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 853
    :cond_f
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 854
    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 985
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 986
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 987
    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 991
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 992
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 993
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 1

    .line 1127
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1128
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 1129
    return-void
.end method

.method public whitelist setAlignmentMode(I)V
    .registers 2
    .param p1, "alignmentMode"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 542
    iput p1, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    .line 543
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 544
    return-void
.end method

.method public whitelist setColumnCount(I)V
    .registers 3
    .param p1, "columnCount"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 453
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    .line 454
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 455
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 456
    return-void
.end method

.method public whitelist setColumnOrderPreserved(Z)V
    .registers 3
    .param p1, "columnOrderPreserved"    # Z

    .line 615
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 616
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 617
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 618
    return-void
.end method

.method public whitelist setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .line 381
    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    if-eq v0, p1, :cond_c

    .line 382
    iput p1, p0, Landroid/widget/GridLayout;->mOrientation:I

    .line 383
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 384
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 386
    :cond_c
    return-void
.end method

.method public greylist-max-o setPrinter(Landroid/util/Printer;)V
    .registers 3
    .param p1, "printer"    # Landroid/util/Printer;

    .line 644
    if-nez p1, :cond_5

    sget-object v0, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    iput-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    .line 645
    return-void
.end method

.method public whitelist setRowCount(I)V
    .registers 3
    .param p1, "rowCount"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 418
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    .line 419
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 420
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 421
    return-void
.end method

.method public whitelist setRowOrderPreserved(Z)V
    .registers 3
    .param p1, "rowOrderPreserved"    # Z

    .line 578
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 579
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 580
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 581
    return-void
.end method

.method public whitelist setUseDefaultMargins(Z)V
    .registers 2
    .param p1, "useDefaultMargins"    # Z

    .line 500
    iput-boolean p1, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    .line 501
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 502
    return-void
.end method
