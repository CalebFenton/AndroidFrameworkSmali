.class public Landroid/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridLayout$Axis;,
        Landroid/widget/GridLayout$LayoutParams;,
        Landroid/widget/GridLayout$Arc;,
        Landroid/widget/GridLayout$MutableInt;,
        Landroid/widget/GridLayout$Assoc;,
        Landroid/widget/GridLayout$PackedMap;,
        Landroid/widget/GridLayout$Bounds;,
        Landroid/widget/GridLayout$Interval;,
        Landroid/widget/GridLayout$Spec;,
        Landroid/widget/GridLayout$Alignment;,
        Landroid/widget/GridLayout$1;,
        Landroid/widget/GridLayout$2;,
        Landroid/widget/GridLayout$3;,
        Landroid/widget/GridLayout$4;,
        Landroid/widget/GridLayout$5;,
        Landroid/widget/GridLayout$6;,
        Landroid/widget/GridLayout$7;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I = 0x6

.field public static final ALIGN_BOUNDS:I = 0x0

.field public static final ALIGN_MARGINS:I = 0x1

.field public static final BASELINE:Landroid/widget/GridLayout$Alignment;

.field public static final BOTTOM:Landroid/widget/GridLayout$Alignment;

.field private static final CAN_STRETCH:I = 0x2

.field public static final CENTER:Landroid/widget/GridLayout$Alignment;

.field private static final COLUMN_COUNT:I = 0x3

.field private static final COLUMN_ORDER_PRESERVED:I = 0x4

.field private static final DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final DEFAULT_COUNT:I = -0x80000000

.field private static final DEFAULT_ORDER_PRESERVED:Z = true

.field private static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final END:Landroid/widget/GridLayout$Alignment;

.field public static final FILL:Landroid/widget/GridLayout$Alignment;

.field public static final HORIZONTAL:I = 0x0

.field private static final INFLEXIBLE:I = 0x0

.field private static final LEADING:Landroid/widget/GridLayout$Alignment;

.field public static final LEFT:Landroid/widget/GridLayout$Alignment;

.field static final LOG_PRINTER:Landroid/util/Printer;

.field static final MAX_SIZE:I = 0x186a0

.field static final NO_PRINTER:Landroid/util/Printer;

.field private static final ORIENTATION:I = 0x0

.field public static final RIGHT:Landroid/widget/GridLayout$Alignment;

.field private static final ROW_COUNT:I = 0x1

.field private static final ROW_ORDER_PRESERVED:I = 0x2

.field public static final START:Landroid/widget/GridLayout$Alignment;

.field public static final TOP:Landroid/widget/GridLayout$Alignment;

.field private static final TRAILING:Landroid/widget/GridLayout$Alignment;

.field public static final UNDEFINED:I = -0x80000000

.field static final UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

.field static final UNINITIALIZED_HASH:I = 0x0

.field private static final USE_DEFAULT_MARGINS:I = 0x5

.field public static final VERTICAL:I = 0x1


# instance fields
.field mAlignmentMode:I

.field mDefaultGap:I

.field final mHorizontalAxis:Landroid/widget/GridLayout$Axis;

.field mLastLayoutParamsHashCode:I

.field mOrientation:I

.field mPrinter:Landroid/util/Printer;

.field mUseDefaultMargins:Z

.field final mVerticalAxis:Landroid/widget/GridLayout$Axis;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 234
    new-instance v0, Landroid/util/LogPrinter;

    #@2
    const-class v1, Landroid/widget/GridLayout;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x3

    #@9
    invoke-direct {v0, v2, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    #@c
    sput-object v0, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    #@e
    .line 235
    new-instance v0, Landroid/widget/GridLayout$1;

    #@10
    invoke-direct {v0}, Landroid/widget/GridLayout$1;-><init>()V

    #@13
    sput-object v0, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    #@15
    .line 2777
    new-instance v0, Landroid/widget/GridLayout$2;

    #@17
    invoke-direct {v0}, Landroid/widget/GridLayout$2;-><init>()V

    #@1a
    sput-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    #@1c
    .line 2793
    new-instance v0, Landroid/widget/GridLayout$3;

    #@1e
    invoke-direct {v0}, Landroid/widget/GridLayout$3;-><init>()V

    #@21
    sput-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    #@23
    .line 2809
    new-instance v0, Landroid/widget/GridLayout$4;

    #@25
    invoke-direct {v0}, Landroid/widget/GridLayout$4;-><init>()V

    #@28
    sput-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    #@2a
    .line 2825
    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    #@2c
    sput-object v0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    #@2e
    .line 2831
    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    #@30
    sput-object v0, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    #@32
    .line 2837
    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    #@34
    sput-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    #@36
    .line 2843
    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    #@38
    sput-object v0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    #@3a
    .line 2863
    sget-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    #@3c
    sget-object v1, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    #@3e
    invoke-static {v0, v1}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    #@41
    move-result-object v0

    #@42
    sput-object v0, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    #@44
    .line 2869
    sget-object v0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    #@46
    sget-object v1, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    #@48
    invoke-static {v0, v1}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    #@4b
    move-result-object v0

    #@4c
    sput-object v0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    #@4e
    .line 2876
    new-instance v0, Landroid/widget/GridLayout$5;

    #@50
    invoke-direct {v0}, Landroid/widget/GridLayout$5;-><init>()V

    #@53
    sput-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    #@55
    .line 2895
    new-instance v0, Landroid/widget/GridLayout$6;

    #@57
    invoke-direct {v0}, Landroid/widget/GridLayout$6;-><init>()V

    #@5a
    sput-object v0, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    #@5c
    .line 2951
    new-instance v0, Landroid/widget/GridLayout$7;

    #@5e
    invoke-direct {v0}, Landroid/widget/GridLayout$7;-><init>()V

    #@61
    sput-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    #@63
    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 273
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 277
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 281
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 285
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 261
    new-instance v1, Landroid/widget/GridLayout$Axis;

    #@8
    invoke-direct {v1, p0, v3, v4}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$Axis;)V

    #@b
    iput-object v1, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@d
    .line 262
    new-instance v1, Landroid/widget/GridLayout$Axis;

    #@f
    invoke-direct {v1, p0, v2, v4}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$Axis;)V

    #@12
    iput-object v1, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@14
    .line 263
    iput v2, p0, Landroid/widget/GridLayout;->mOrientation:I

    #@16
    .line 264
    iput-boolean v2, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    #@18
    .line 265
    iput v3, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    #@1a
    .line 267
    iput v2, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    #@1c
    .line 268
    sget-object v1, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    #@1e
    iput-object v1, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    #@20
    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object v1

    #@24
    const v2, 0x105004e

    #@27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    #@2d
    .line 288
    sget-object v1, Lcom/android/internal/R$styleable;->GridLayout:[I

    #@2f
    .line 287
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@32
    move-result-object v0

    #@33
    .line 290
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    #@34
    const/high16 v2, -0x80000000

    #@36
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@39
    move-result v1

    #@3a
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setRowCount(I)V

    #@3d
    .line 291
    const/4 v1, 0x3

    #@3e
    const/high16 v2, -0x80000000

    #@40
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@43
    move-result v1

    #@44
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    #@47
    .line 292
    const/4 v1, 0x0

    #@48
    const/4 v2, 0x0

    #@49
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4c
    move-result v1

    #@4d
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setOrientation(I)V

    #@50
    .line 293
    const/4 v1, 0x5

    #@51
    const/4 v2, 0x0

    #@52
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@55
    move-result v1

    #@56
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    #@59
    .line 294
    const/4 v1, 0x6

    #@5a
    const/4 v2, 0x1

    #@5b
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5e
    move-result v1

    #@5f
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setAlignmentMode(I)V

    #@62
    .line 295
    const/4 v1, 0x2

    #@63
    const/4 v2, 0x1

    #@64
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@67
    move-result v1

    #@68
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setRowOrderPreserved(Z)V

    #@6b
    .line 296
    const/4 v1, 0x4

    #@6c
    const/4 v2, 0x1

    #@6d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@70
    move-result v1

    #@71
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@74
    .line 298
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@77
    .line 284
    return-void

    #@78
    .line 297
    :catchall_0
    move-exception v1

    #@79
    .line 298
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@7c
    .line 297
    throw v1
.end method

.method static adjust(II)I
    .locals 2
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    #@0
    .prologue
    .line 1028
    add-int v0, p0, p1

    #@2
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@5
    move-result v0

    #@6
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@9
    move-result v1

    #@a
    .line 1027
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    #@1
    .line 621
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    array-length v2, p0

    #@a
    array-length v3, p1

    #@b
    add-int/2addr v2, v3

    #@c
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Ljava/lang/Object;

    #@12
    .line 622
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    #@13
    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 623
    array-length v1, p0

    #@17
    array-length v2, p1

    #@18
    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    .line 624
    return-object v0
.end method

.method static canStretch(I)Z
    .locals 2
    .param p0, "flexibility"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2969
    and-int/lit8 v1, p0, 0x2

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V
    .locals 8
    .param p1, "lp"    # Landroid/widget/GridLayout$LayoutParams;
    .param p2, "horizontal"    # Z

    #@0
    .prologue
    const/high16 v7, -0x80000000

    #@2
    .line 827
    if-eqz p2, :cond_3

    #@4
    const-string/jumbo v2, "column"

    #@7
    .line 828
    .local v2, "groupName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_4

    #@9
    iget-object v4, p1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@b
    .line 829
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget-object v3, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@d
    .line 830
    .local v3, "span":Landroid/widget/GridLayout$Interval;
    iget v5, v3, Landroid/widget/GridLayout$Interval;->min:I

    #@f
    if-eq v5, v7, :cond_0

    #@11
    iget v5, v3, Landroid/widget/GridLayout$Interval;->min:I

    #@13
    if-gez v5, :cond_0

    #@15
    .line 831
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    const-string/jumbo v6, " indices must be positive"

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-static {v5}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    #@2c
    .line 833
    :cond_0
    if-eqz p2, :cond_5

    #@2e
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@30
    .line 834
    .local v0, "axis":Landroid/widget/GridLayout$Axis;
    :goto_2
    iget v1, v0, Landroid/widget/GridLayout$Axis;->definedCount:I

    #@32
    .line 835
    .local v1, "count":I
    if-eq v1, v7, :cond_2

    #@34
    .line 836
    iget v5, v3, Landroid/widget/GridLayout$Interval;->max:I

    #@36
    if-le v5, v1, :cond_1

    #@38
    .line 837
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    .line 838
    const-string/jumbo v6, " indices (start + span) mustn\'t exceed the "

    #@44
    .line 837
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    .line 838
    const-string/jumbo v6, " count"

    #@4f
    .line 837
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-static {v5}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    #@5a
    .line 840
    :cond_1
    invoke-virtual {v3}, Landroid/widget/GridLayout$Interval;->size()I

    #@5d
    move-result v5

    #@5e
    if-le v5, v1, :cond_2

    #@60
    .line 841
    new-instance v5, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    const-string/jumbo v6, " span mustn\'t exceed the "

    #@6c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    const-string/jumbo v6, " count"

    #@77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-static {v5}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    #@82
    .line 826
    :cond_2
    return-void

    #@83
    .line 827
    .end local v0    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v1    # "count":I
    .end local v2    # "groupName":Ljava/lang/String;
    .end local v3    # "span":Landroid/widget/GridLayout$Interval;
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_3
    const-string/jumbo v2, "row"

    #@86
    .restart local v2    # "groupName":Ljava/lang/String;
    goto :goto_0

    #@87
    .line 828
    :cond_4
    iget-object v4, p1, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@89
    .restart local v4    # "spec":Landroid/widget/GridLayout$Spec;
    goto :goto_1

    #@8a
    .line 833
    .restart local v3    # "span":Landroid/widget/GridLayout$Interval;
    :cond_5
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@8c
    .restart local v0    # "axis":Landroid/widget/GridLayout$Axis;
    goto :goto_2
.end method

.method private static clip(Landroid/widget/GridLayout$Interval;ZI)I
    .locals 3
    .param p0, "minorRange"    # Landroid/widget/GridLayout$Interval;
    .param p1, "minorWasDefined"    # Z
    .param p2, "count"    # I

    #@0
    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/widget/GridLayout$Interval;->size()I

    #@3
    move-result v1

    #@4
    .line 724
    .local v1, "size":I
    if-nez p2, :cond_0

    #@6
    .line 725
    return v1

    #@7
    .line 727
    :cond_0
    if-eqz p1, :cond_1

    #@9
    iget v2, p0, Landroid/widget/GridLayout$Interval;->min:I

    #@b
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    #@e
    move-result v0

    #@f
    .line 728
    .local v0, "min":I
    :goto_0
    sub-int v2, p2, v0

    #@11
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 727
    .end local v0    # "min":I
    :cond_1
    const/4 v0, 0x0

    #@17
    .restart local v0    # "min":I
    goto :goto_0
.end method

.method private computeLayoutParamsHashCode()I
    .locals 7

    #@0
    .prologue
    .line 965
    const/4 v4, 0x1

    #@1
    .line 966
    .local v4, "result":I
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    #@5
    move-result v0

    #@6
    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@8
    .line 967
    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    .line 968
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@f
    move-result v5

    #@10
    const/16 v6, 0x8

    #@12
    if-ne v5, v6, :cond_0

    #@14
    .line 966
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 969
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/widget/GridLayout$LayoutParams;

    #@1d
    .line 970
    .local v3, "lp":Landroid/widget/GridLayout$LayoutParams;
    mul-int/lit8 v5, v4, 0x1f

    #@1f
    invoke-virtual {v3}, Landroid/widget/GridLayout$LayoutParams;->hashCode()I

    #@22
    move-result v6

    #@23
    add-int v4, v5, v6

    #@25
    goto :goto_1

    #@26
    .line 972
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_1
    return v4
.end method

.method private consistencyCheck()V
    .locals 2

    #@0
    .prologue
    .line 976
    iget v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    #@2
    if-nez v0, :cond_1

    #@4
    .line 977
    invoke-direct {p0}, Landroid/widget/GridLayout;->validateLayoutParams()V

    #@7
    .line 978
    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    #@d
    .line 975
    :cond_0
    :goto_0
    return-void

    #@e
    .line 979
    :cond_1
    iget v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    #@10
    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    #@13
    move-result v1

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 980
    iget-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    #@18
    const-string/jumbo v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    #@1b
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1e
    .line 982
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    #@21
    .line 983
    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    #@24
    goto :goto_0
.end method

.method private static createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;
    .locals 1
    .param p0, "ltr"    # Landroid/widget/GridLayout$Alignment;
    .param p1, "rtl"    # Landroid/widget/GridLayout$Alignment;

    #@0
    .prologue
    .line 2846
    new-instance v0, Landroid/widget/GridLayout$8;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$8;-><init>(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)V

    #@5
    return-object v0
.end method

.method private drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "graphics"    # Landroid/graphics/Canvas;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 877
    invoke-virtual {p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 878
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getWidth()I

    #@9
    move-result v6

    #@a
    .line 879
    .local v6, "width":I
    sub-int v0, v6, p2

    #@c
    int-to-float v1, v0

    #@d
    int-to-float v2, p3

    #@e
    sub-int v0, v6, p4

    #@10
    int-to-float v3, v0

    #@11
    int-to-float v4, p5

    #@12
    move-object v0, p1

    #@13
    move-object v5, p6

    #@14
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@17
    .line 876
    .end local v6    # "width":I
    :goto_0
    return-void

    #@18
    .line 881
    :cond_0
    int-to-float v1, p2

    #@19
    int-to-float v2, p3

    #@1a
    int-to-float v3, p4

    #@1b
    int-to-float v4, p5

    #@1c
    move-object v0, p1

    #@1d
    move-object v5, p6

    #@1e
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@21
    goto :goto_0
.end method

.method private static fits([IIII)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "value"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 700
    array-length v1, p0

    #@2
    if-le p3, v1, :cond_0

    #@4
    .line 701
    return v2

    #@5
    .line 703
    :cond_0
    move v0, p2

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    #@8
    .line 704
    aget v1, p0, v0

    #@a
    if-le v1, p1, :cond_1

    #@c
    .line 705
    return v2

    #@d
    .line 703
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 708
    :cond_2
    const/4 v1, 0x1

    #@11
    return v1
.end method

.method static getAlignment(IZ)Landroid/widget/GridLayout$Alignment;
    .locals 4
    .param p0, "gravity"    # I
    .param p1, "horizontal"    # Z

    #@0
    .prologue
    .line 628
    if-eqz p1, :cond_0

    #@2
    const/4 v1, 0x7

    #@3
    .line 629
    .local v1, "mask":I
    :goto_0
    if-eqz p1, :cond_1

    #@5
    const/4 v2, 0x0

    #@6
    .line 630
    .local v2, "shift":I
    :goto_1
    and-int v3, p0, v1

    #@8
    shr-int v0, v3, v2

    #@a
    .line 631
    .local v0, "flags":I
    sparse-switch v0, :sswitch_data_0

    #@d
    .line 645
    sget-object v3, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    #@f
    return-object v3

    #@10
    .line 628
    .end local v0    # "flags":I
    .end local v1    # "mask":I
    .end local v2    # "shift":I
    :cond_0
    const/16 v1, 0x70

    #@12
    .restart local v1    # "mask":I
    goto :goto_0

    #@13
    .line 629
    :cond_1
    const/4 v2, 0x4

    #@14
    .restart local v2    # "shift":I
    goto :goto_1

    #@15
    .line 633
    .restart local v0    # "flags":I
    :sswitch_0
    if-eqz p1, :cond_2

    #@17
    sget-object v3, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    #@19
    :goto_2
    return-object v3

    #@1a
    :cond_2
    sget-object v3, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    #@1c
    goto :goto_2

    #@1d
    .line 635
    :sswitch_1
    if-eqz p1, :cond_3

    #@1f
    sget-object v3, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    #@21
    :goto_3
    return-object v3

    #@22
    :cond_3
    sget-object v3, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    #@24
    goto :goto_3

    #@25
    .line 637
    :sswitch_2
    sget-object v3, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    #@27
    return-object v3

    #@28
    .line 639
    :sswitch_3
    sget-object v3, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    #@2a
    return-object v3

    #@2b
    .line 641
    :sswitch_4
    sget-object v3, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    #@2d
    return-object v3

    #@2e
    .line 643
    :sswitch_5
    sget-object v3, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    #@30
    return-object v3

    #@31
    .line 631
    nop

    #@32
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method

.method private getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I
    .locals 7
    .param p1, "c"    # Landroid/view/View;
    .param p2, "p"    # Landroid/widget/GridLayout$LayoutParams;
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 662
    iget-boolean v5, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 663
    return v6

    #@6
    .line 665
    :cond_0
    if-eqz p3, :cond_1

    #@8
    iget-object v4, p2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@a
    .line 666
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_0
    if-eqz p3, :cond_2

    #@c
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@e
    .line 667
    .local v0, "axis":Landroid/widget/GridLayout$Axis;
    :goto_1
    iget-object v3, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@10
    .line 668
    .local v3, "span":Landroid/widget/GridLayout$Interval;
    if-eqz p3, :cond_4

    #@12
    invoke-virtual {p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_4

    #@18
    if-eqz p4, :cond_3

    #@1a
    const/4 v2, 0x0

    #@1b
    .line 669
    :goto_2
    if-eqz v2, :cond_6

    #@1d
    iget v5, v3, Landroid/widget/GridLayout$Interval;->min:I

    #@1f
    if-nez v5, :cond_5

    #@21
    :goto_3
    const/4 v1, 0x1

    #@22
    .line 671
    .local v1, "isAtEdge":Z
    :goto_4
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    #@25
    move-result v5

    #@26
    return v5

    #@27
    .line 665
    .end local v0    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v1    # "isAtEdge":Z
    .end local v3    # "span":Landroid/widget/GridLayout$Interval;
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_1
    iget-object v4, p2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@29
    .restart local v4    # "spec":Landroid/widget/GridLayout$Spec;
    goto :goto_0

    #@2a
    .line 666
    :cond_2
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@2c
    .restart local v0    # "axis":Landroid/widget/GridLayout$Axis;
    goto :goto_1

    #@2d
    .line 668
    .restart local v3    # "span":Landroid/widget/GridLayout$Interval;
    :cond_3
    const/4 v2, 0x1

    #@2e
    .local v2, "leading1":Z
    goto :goto_2

    #@2f
    .end local v2    # "leading1":Z
    :cond_4
    move v2, p4

    #@30
    .local v2, "leading1":Z
    goto :goto_2

    #@31
    .line 669
    .end local v2    # "leading1":Z
    :cond_5
    const/4 v1, 0x0

    #@32
    .restart local v1    # "isAtEdge":Z
    goto :goto_4

    #@33
    .end local v1    # "isAtEdge":Z
    :cond_6
    iget v5, v3, Landroid/widget/GridLayout$Interval;->max:I

    #@35
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@38
    move-result v6

    #@39
    if-ne v5, v6, :cond_5

    #@3b
    goto :goto_3
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    #@0
    .prologue
    .line 651
    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const-class v1, Landroid/widget/Space;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 652
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 654
    :cond_0
    iget v0, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    #@c
    div-int/lit8 v0, v0, 0x2

    #@e
    return v0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "isAtEdge"    # Z
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    #@0
    .prologue
    .line 658
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    #@0
    .prologue
    .line 683
    iget v5, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    #@2
    const/4 v6, 0x1

    #@3
    if-ne v5, v6, :cond_0

    #@5
    .line 684
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 686
    :cond_0
    if-eqz p2, :cond_1

    #@c
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@e
    .line 687
    .local v0, "axis":Landroid/widget/GridLayout$Axis;
    :goto_0
    if-eqz p3, :cond_2

    #@10
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLeadingMargins()[I

    #@13
    move-result-object v3

    #@14
    .line 688
    .local v3, "margins":[I
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    #@17
    move-result-object v2

    #@18
    .line 689
    .local v2, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_3

    #@1a
    iget-object v4, v2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@1c
    .line 690
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_2
    if-eqz p3, :cond_4

    #@1e
    iget-object v5, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@20
    iget v1, v5, Landroid/widget/GridLayout$Interval;->min:I

    #@22
    .line 691
    .local v1, "index":I
    :goto_3
    aget v5, v3, v1

    #@24
    return v5

    #@25
    .line 686
    .end local v0    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v1    # "index":I
    .end local v2    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v3    # "margins":[I
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@27
    .restart local v0    # "axis":Landroid/widget/GridLayout$Axis;
    goto :goto_0

    #@28
    .line 687
    :cond_2
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getTrailingMargins()[I

    #@2b
    move-result-object v3

    #@2c
    .restart local v3    # "margins":[I
    goto :goto_1

    #@2d
    .line 689
    .restart local v2    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_3
    iget-object v4, v2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@2f
    .restart local v4    # "spec":Landroid/widget/GridLayout$Spec;
    goto :goto_2

    #@30
    .line 690
    :cond_4
    iget-object v5, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@32
    iget v1, v5, Landroid/widget/GridLayout$Interval;->max:I

    #@34
    .restart local v1    # "index":I
    goto :goto_3
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    #@0
    .prologue
    .line 1070
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    #@0
    .prologue
    .line 696
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    #@9
    move-result v1

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method private static handleInvalidParams(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 823
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, ". "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method private invalidateStructure()V
    .locals 1

    #@0
    .prologue
    .line 790
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    #@3
    .line 791
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@5
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    #@8
    .line 792
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@a
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    #@d
    .line 794
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    #@10
    .line 789
    return-void
.end method

.method private invalidateValues()V
    .locals 1

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 801
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@a
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    #@d
    .line 802
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@f
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    #@12
    .line 797
    :cond_0
    return-void
.end method

.method static max2([II)I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "valueIfEmpty"    # I

    #@0
    .prologue
    .line 612
    move v2, p1

    #@1
    .line 613
    .local v2, "result":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    array-length v0, p0

    #@3
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@5
    .line 614
    aget v3, p0, v1

    #@7
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@a
    move-result v2

    #@b
    .line 613
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 616
    :cond_0
    return v2
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "parentHeightSpec"    # I
    .param p4, "childWidth"    # I
    .param p5, "childHeight"    # I

    #@0
    .prologue
    .line 993
    const/4 v2, 0x1

    #@1
    invoke-direct {p0, p1, v2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    #@4
    move-result v2

    #@5
    .line 992
    invoke-static {p2, v2, p4}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    #@8
    move-result v1

    #@9
    .line 995
    .local v1, "childWidthSpec":I
    const/4 v2, 0x0

    #@a
    invoke-direct {p0, p1, v2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    #@d
    move-result v2

    #@e
    .line 994
    invoke-static {p3, v2, p5}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    #@11
    move-result v0

    #@12
    .line 996
    .local v0, "childHeightSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@15
    .line 991
    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 22
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "firstPass"    # Z

    #@0
    .prologue
    .line 1001
    const/16 v17, 0x0

    #@2
    .local v17, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    #@5
    move-result v13

    #@6
    .local v13, "N":I
    :goto_0
    move/from16 v0, v17

    #@8
    if-ge v0, v13, :cond_7

    #@a
    .line 1002
    move-object/from16 v0, p0

    #@c
    move/from16 v1, v17

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v3

    #@12
    .line 1003
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@15
    move-result v2

    #@16
    const/16 v4, 0x8

    #@18
    if-ne v2, v4, :cond_1

    #@1a
    .line 1001
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1004
    :cond_1
    move-object/from16 v0, p0

    #@1f
    invoke-virtual {v0, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    #@22
    move-result-object v19

    #@23
    .line 1005
    .local v19, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p3, :cond_2

    #@25
    .line 1006
    move-object/from16 v0, v19

    #@27
    iget v6, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    #@29
    move-object/from16 v0, v19

    #@2b
    iget v7, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    #@2d
    move-object/from16 v2, p0

    #@2f
    move/from16 v4, p1

    #@31
    move/from16 v5, p2

    #@33
    invoke-direct/range {v2 .. v7}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    #@36
    goto :goto_1

    #@37
    .line 1008
    :cond_2
    move-object/from16 v0, p0

    #@39
    iget v2, v0, Landroid/widget/GridLayout;->mOrientation:I

    #@3b
    if-nez v2, :cond_3

    #@3d
    const/16 v16, 0x1

    #@3f
    .line 1009
    .local v16, "horizontal":Z
    :goto_2
    if-eqz v16, :cond_4

    #@41
    move-object/from16 v0, v19

    #@43
    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@45
    move-object/from16 v21, v0

    #@47
    .line 1010
    .local v21, "spec":Landroid/widget/GridLayout$Spec;
    :goto_3
    move-object/from16 v0, v21

    #@49
    move/from16 v1, v16

    #@4b
    invoke-static {v0, v1}, Landroid/widget/GridLayout$Spec;->-wrap0(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    #@4e
    move-result-object v2

    #@4f
    sget-object v4, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    #@51
    if-ne v2, v4, :cond_0

    #@53
    .line 1011
    move-object/from16 v0, v21

    #@55
    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@57
    move-object/from16 v20, v0

    #@59
    .line 1012
    .local v20, "span":Landroid/widget/GridLayout$Interval;
    if-eqz v16, :cond_5

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v14, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@5f
    .line 1013
    .local v14, "axis":Landroid/widget/GridLayout$Axis;
    :goto_4
    invoke-virtual {v14}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    #@62
    move-result-object v18

    #@63
    .line 1014
    .local v18, "locations":[I
    move-object/from16 v0, v20

    #@65
    iget v2, v0, Landroid/widget/GridLayout$Interval;->max:I

    #@67
    aget v2, v18, v2

    #@69
    move-object/from16 v0, v20

    #@6b
    iget v4, v0, Landroid/widget/GridLayout$Interval;->min:I

    #@6d
    aget v4, v18, v4

    #@6f
    sub-int v15, v2, v4

    #@71
    .line 1015
    .local v15, "cellSize":I
    move-object/from16 v0, p0

    #@73
    move/from16 v1, v16

    #@75
    invoke-direct {v0, v3, v1}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    #@78
    move-result v2

    #@79
    sub-int v6, v15, v2

    #@7b
    .line 1016
    .local v6, "viewSize":I
    if-eqz v16, :cond_6

    #@7d
    .line 1017
    move-object/from16 v0, v19

    #@7f
    iget v7, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    #@81
    move-object/from16 v2, p0

    #@83
    move/from16 v4, p1

    #@85
    move/from16 v5, p2

    #@87
    invoke-direct/range {v2 .. v7}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    #@8a
    goto :goto_1

    #@8b
    .line 1008
    .end local v6    # "viewSize":I
    .end local v14    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v15    # "cellSize":I
    .end local v16    # "horizontal":Z
    .end local v18    # "locations":[I
    .end local v20    # "span":Landroid/widget/GridLayout$Interval;
    .end local v21    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_3
    const/16 v16, 0x0

    #@8d
    .restart local v16    # "horizontal":Z
    goto :goto_2

    #@8e
    .line 1009
    :cond_4
    move-object/from16 v0, v19

    #@90
    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@92
    move-object/from16 v21, v0

    #@94
    .restart local v21    # "spec":Landroid/widget/GridLayout$Spec;
    goto :goto_3

    #@95
    .line 1012
    .restart local v20    # "span":Landroid/widget/GridLayout$Interval;
    :cond_5
    move-object/from16 v0, p0

    #@97
    iget-object v14, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@99
    .restart local v14    # "axis":Landroid/widget/GridLayout$Axis;
    goto :goto_4

    #@9a
    .line 1019
    .restart local v6    # "viewSize":I
    .restart local v15    # "cellSize":I
    .restart local v18    # "locations":[I
    :cond_6
    move-object/from16 v0, v19

    #@9c
    iget v11, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    #@9e
    move-object/from16 v7, p0

    #@a0
    move-object v8, v3

    #@a1
    move/from16 v9, p1

    #@a3
    move/from16 v10, p2

    #@a5
    move v12, v6

    #@a6
    invoke-direct/range {v7 .. v12}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    #@a9
    goto/16 :goto_1

    #@ab
    .line 1000
    .end local v3    # "c":Landroid/view/View;
    .end local v6    # "viewSize":I
    .end local v14    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v15    # "cellSize":I
    .end local v16    # "horizontal":Z
    .end local v18    # "locations":[I
    .end local v19    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v20    # "span":Landroid/widget/GridLayout$Interval;
    .end local v21    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    .line 712
    array-length v0, p0

    #@1
    .line 713
    .local v0, "length":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@4
    move-result v1

    #@5
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@8
    move-result v2

    #@9
    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    #@c
    .line 711
    return-void
.end method

.method private static setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V
    .locals 2
    .param p0, "lp"    # Landroid/widget/GridLayout$LayoutParams;
    .param p1, "row"    # I
    .param p2, "rowSpan"    # I
    .param p3, "col"    # I
    .param p4, "colSpan"    # I

    #@0
    .prologue
    .line 717
    new-instance v0, Landroid/widget/GridLayout$Interval;

    #@2
    add-int v1, p1, p2

    #@4
    invoke-direct {v0, p1, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    #@7
    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V

    #@a
    .line 718
    new-instance v0, Landroid/widget/GridLayout$Interval;

    #@c
    add-int v1, p3, p4

    #@e
    invoke-direct {v0, p3, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    #@11
    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V

    #@14
    .line 716
    return-void
.end method

.method public static spec(I)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I

    #@0
    .prologue
    .line 2713
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static spec(IF)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "weight"    # F

    #@0
    .prologue
    .line 2651
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IIF)Landroid/widget/GridLayout$Spec;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static spec(II)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I

    #@0
    .prologue
    .line 2697
    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    #@2
    invoke-static {p0, p1, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static spec(IIF)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "weight"    # F

    #@0
    .prologue
    .line 2641
    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    #@2
    invoke-static {p0, p1, v0, p2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/widget/GridLayout$Alignment;

    #@0
    .prologue
    .line 2662
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;
    .locals 7
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p3, "weight"    # F

    #@0
    .prologue
    .line 2617
    new-instance v0, Landroid/widget/GridLayout$Spec;

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-eq p0, v1, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    const/4 v6, 0x0

    #@8
    move v2, p0

    #@9
    move v3, p1

    #@a
    move-object v4, p2

    #@b
    move v5, p3

    #@c
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;FLandroid/widget/GridLayout$Spec;)V

    #@f
    return-object v0

    #@10
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method public static spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "alignment"    # Landroid/widget/GridLayout$Alignment;

    #@0
    .prologue
    .line 2680
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p2, "weight"    # F

    #@0
    .prologue
    .line 2628
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0, p1, p2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private validateLayoutParams()V
    .locals 21

    #@0
    .prologue
    .line 733
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/widget/GridLayout;->mOrientation:I

    #@4
    move/from16 v19, v0

    #@6
    if-nez v19, :cond_4

    #@8
    const/4 v5, 0x1

    #@9
    .line 734
    .local v5, "horizontal":Z
    :goto_0
    if-eqz v5, :cond_5

    #@b
    move-object/from16 v0, p0

    #@d
    iget-object v3, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@f
    .line 735
    .local v3, "axis":Landroid/widget/GridLayout$Axis;
    :goto_1
    iget v0, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    #@11
    move/from16 v19, v0

    #@13
    const/high16 v20, -0x80000000

    #@15
    move/from16 v0, v19

    #@17
    move/from16 v1, v20

    #@19
    if-eq v0, v1, :cond_6

    #@1b
    iget v4, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    #@1d
    .line 737
    .local v4, "count":I
    :goto_2
    const/4 v8, 0x0

    #@1e
    .line 738
    .local v8, "major":I
    const/4 v14, 0x0

    #@1f
    .line 739
    .local v14, "minor":I
    new-array v13, v4, [I

    #@21
    .line 741
    .local v13, "maxSizes":[I
    const/4 v6, 0x0

    #@22
    .local v6, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    #@25
    move-result v2

    #@26
    .local v2, "N":I
    :goto_3
    if-ge v6, v2, :cond_d

    #@28
    .line 742
    move-object/from16 v0, p0

    #@2a
    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@2d
    move-result-object v19

    #@2e
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@31
    move-result-object v7

    #@32
    check-cast v7, Landroid/widget/GridLayout$LayoutParams;

    #@34
    .line 744
    .local v7, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz v5, :cond_7

    #@36
    iget-object v11, v7, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@38
    .line 745
    .local v11, "majorSpec":Landroid/widget/GridLayout$Spec;
    :goto_4
    iget-object v9, v11, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@3a
    .line 746
    .local v9, "majorRange":Landroid/widget/GridLayout$Interval;
    iget-boolean v12, v11, Landroid/widget/GridLayout$Spec;->startDefined:Z

    #@3c
    .line 747
    .local v12, "majorWasDefined":Z
    invoke-virtual {v9}, Landroid/widget/GridLayout$Interval;->size()I

    #@3f
    move-result v10

    #@40
    .line 748
    .local v10, "majorSpan":I
    if-eqz v12, :cond_0

    #@42
    .line 749
    iget v8, v9, Landroid/widget/GridLayout$Interval;->min:I

    #@44
    .line 752
    :cond_0
    if-eqz v5, :cond_8

    #@46
    iget-object v0, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@48
    move-object/from16 v17, v0

    #@4a
    .line 753
    .local v17, "minorSpec":Landroid/widget/GridLayout$Spec;
    :goto_5
    move-object/from16 v0, v17

    #@4c
    iget-object v15, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@4e
    .line 754
    .local v15, "minorRange":Landroid/widget/GridLayout$Interval;
    move-object/from16 v0, v17

    #@50
    iget-boolean v0, v0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    #@52
    move/from16 v18, v0

    #@54
    .line 755
    .local v18, "minorWasDefined":Z
    move/from16 v0, v18

    #@56
    invoke-static {v15, v0, v4}, Landroid/widget/GridLayout;->clip(Landroid/widget/GridLayout$Interval;ZI)I

    #@59
    move-result v16

    #@5a
    .line 756
    .local v16, "minorSpan":I
    if-eqz v18, :cond_1

    #@5c
    .line 757
    iget v14, v15, Landroid/widget/GridLayout$Interval;->min:I

    #@5e
    .line 760
    :cond_1
    if-eqz v4, :cond_3

    #@60
    .line 762
    if-eqz v12, :cond_9

    #@62
    if-eqz v18, :cond_9

    #@64
    .line 776
    :cond_2
    add-int v19, v14, v16

    #@66
    add-int v20, v8, v10

    #@68
    move/from16 v0, v19

    #@6a
    move/from16 v1, v20

    #@6c
    invoke-static {v13, v14, v0, v1}, Landroid/widget/GridLayout;->procrusteanFill([IIII)V

    #@6f
    .line 779
    :cond_3
    if-eqz v5, :cond_c

    #@71
    .line 780
    move/from16 v0, v16

    #@73
    invoke-static {v7, v8, v10, v14, v0}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    #@76
    .line 785
    :goto_6
    add-int v14, v14, v16

    #@78
    .line 741
    add-int/lit8 v6, v6, 0x1

    #@7a
    goto :goto_3

    #@7b
    .line 733
    .end local v2    # "N":I
    .end local v3    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v4    # "count":I
    .end local v5    # "horizontal":Z
    .end local v6    # "i":I
    .end local v7    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v8    # "major":I
    .end local v9    # "majorRange":Landroid/widget/GridLayout$Interval;
    .end local v10    # "majorSpan":I
    .end local v11    # "majorSpec":Landroid/widget/GridLayout$Spec;
    .end local v12    # "majorWasDefined":Z
    .end local v13    # "maxSizes":[I
    .end local v14    # "minor":I
    .end local v15    # "minorRange":Landroid/widget/GridLayout$Interval;
    .end local v16    # "minorSpan":I
    .end local v17    # "minorSpec":Landroid/widget/GridLayout$Spec;
    .end local v18    # "minorWasDefined":Z
    :cond_4
    const/4 v5, 0x0

    #@7c
    .restart local v5    # "horizontal":Z
    goto :goto_0

    #@7d
    .line 734
    :cond_5
    move-object/from16 v0, p0

    #@7f
    iget-object v3, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@81
    .restart local v3    # "axis":Landroid/widget/GridLayout$Axis;
    goto :goto_1

    #@82
    .line 735
    :cond_6
    const/4 v4, 0x0

    #@83
    .restart local v4    # "count":I
    goto :goto_2

    #@84
    .line 744
    .restart local v2    # "N":I
    .restart local v6    # "i":I
    .restart local v7    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .restart local v8    # "major":I
    .restart local v13    # "maxSizes":[I
    .restart local v14    # "minor":I
    :cond_7
    iget-object v11, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@86
    .restart local v11    # "majorSpec":Landroid/widget/GridLayout$Spec;
    goto :goto_4

    #@87
    .line 752
    .restart local v9    # "majorRange":Landroid/widget/GridLayout$Interval;
    .restart local v10    # "majorSpan":I
    .restart local v12    # "majorWasDefined":Z
    :cond_8
    iget-object v0, v7, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@89
    move-object/from16 v17, v0

    #@8b
    .restart local v17    # "minorSpec":Landroid/widget/GridLayout$Spec;
    goto :goto_5

    #@8c
    .line 763
    .restart local v15    # "minorRange":Landroid/widget/GridLayout$Interval;
    .restart local v16    # "minorSpan":I
    .restart local v18    # "minorWasDefined":Z
    :cond_9
    :goto_7
    add-int v19, v14, v16

    #@8e
    move/from16 v0, v19

    #@90
    invoke-static {v13, v8, v14, v0}, Landroid/widget/GridLayout;->fits([IIII)Z

    #@93
    move-result v19

    #@94
    if-nez v19, :cond_2

    #@96
    .line 764
    if-eqz v18, :cond_a

    #@98
    .line 765
    add-int/lit8 v8, v8, 0x1

    #@9a
    goto :goto_7

    #@9b
    .line 767
    :cond_a
    add-int v19, v14, v16

    #@9d
    move/from16 v0, v19

    #@9f
    if-gt v0, v4, :cond_b

    #@a1
    .line 768
    add-int/lit8 v14, v14, 0x1

    #@a3
    goto :goto_7

    #@a4
    .line 770
    :cond_b
    const/4 v14, 0x0

    #@a5
    .line 771
    add-int/lit8 v8, v8, 0x1

    #@a7
    goto :goto_7

    #@a8
    .line 782
    :cond_c
    move/from16 v0, v16

    #@aa
    invoke-static {v7, v14, v0, v8, v10}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    #@ad
    goto :goto_6

    #@ae
    .line 732
    .end local v7    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v9    # "majorRange":Landroid/widget/GridLayout$Interval;
    .end local v10    # "majorSpan":I
    .end local v11    # "majorSpec":Landroid/widget/GridLayout$Spec;
    .end local v12    # "majorWasDefined":Z
    .end local v15    # "minorRange":Landroid/widget/GridLayout$Interval;
    .end local v16    # "minorSpan":I
    .end local v17    # "minorSpec":Landroid/widget/GridLayout$Spec;
    .end local v18    # "minorWasDefined":Z
    :cond_d
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 848
    instance-of v1, p1, Landroid/widget/GridLayout$LayoutParams;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 849
    return v2

    #@7
    :cond_0
    move-object v0, p1

    #@8
    .line 851
    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    #@a
    .line 853
    .local v0, "lp":Landroid/widget/GridLayout$LayoutParams;
    invoke-direct {p0, v0, v3}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    #@d
    .line 854
    invoke-direct {p0, v0, v2}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    #@10
    .line 856
    return v3
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 860
    invoke-virtual {p0}, Landroid/widget/GridLayout;->generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 861
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    #@2
    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    #@5
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 865
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 870
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 866
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 871
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1180
    const-class v0, Landroid/widget/GridLayout;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAlignmentMode()I
    .locals 1

    #@0
    .prologue
    .line 487
    iget v0, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    #@2
    return v0
.end method

.method public getColumnCount()I
    .locals 1

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@2
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method final getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/view/View;

    #@0
    .prologue
    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    #@6
    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    #@0
    .prologue
    .line 675
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 676
    .local v0, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_2

    #@6
    .line 677
    if-eqz p3, :cond_1

    #@8
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    #@a
    .line 679
    .local v1, "margin":I
    :goto_0
    const/high16 v2, -0x80000000

    #@c
    if-ne v1, v2, :cond_0

    #@e
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I

    #@11
    move-result v1

    #@12
    .end local v1    # "margin":I
    :cond_0
    return v1

    #@13
    .line 677
    :cond_1
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    #@15
    .restart local v1    # "margin":I
    goto :goto_0

    #@16
    .line 678
    .end local v1    # "margin":I
    :cond_2
    if-eqz p3, :cond_3

    #@18
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    #@1a
    .restart local v1    # "margin":I
    goto :goto_0

    #@1b
    .end local v1    # "margin":I
    :cond_3
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    #@1d
    .restart local v1    # "margin":I
    goto :goto_0
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    #@0
    .prologue
    .line 1074
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 1075
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 1077
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    #@d
    move-result v0

    #@e
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    #@11
    move-result v1

    #@12
    add-int/2addr v0, v1

    #@13
    return v0
.end method

.method public getOrientation()I
    .locals 1

    #@0
    .prologue
    .line 315
    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    #@2
    return v0
.end method

.method public getPrinter()Landroid/util/Printer;
    .locals 1

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    #@2
    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@2
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    #@0
    .prologue
    .line 439
    iget-boolean v0, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    #@2
    return v0
.end method

.method public isColumnOrderPreserved()Z
    .locals 1

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@2
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRowOrderPreserved()Z
    .locals 1

    #@0
    .prologue
    .line 521
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@2
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    #@0
    .prologue
    const/16 v0, 0x8

    #@2
    .line 958
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    #@5
    .line 959
    if-eq p2, v0, :cond_0

    #@7
    if-ne p3, v0, :cond_1

    #@9
    .line 960
    :cond_0
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    #@c
    .line 957
    :cond_1
    return-void
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 908
    new-instance v7, Landroid/graphics/Paint;

    #@2
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    #@5
    .line 909
    .local v7, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@7
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@a
    .line 910
    const/16 v1, 0x32

    #@c
    const/16 v2, 0xff

    #@e
    const/16 v5, 0xff

    #@10
    const/16 v8, 0xff

    #@12
    invoke-static {v1, v2, v5, v8}, Landroid/graphics/Color;->argb(IIII)I

    #@15
    move-result v1

    #@16
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@19
    .line 912
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getOpticalInsets()Landroid/graphics/Insets;

    #@1c
    move-result-object v16

    #@1d
    .line 914
    .local v16, "insets":Landroid/graphics/Insets;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    #@20
    move-result v1

    #@21
    move-object/from16 v0, v16

    #@23
    iget v2, v0, Landroid/graphics/Insets;->top:I

    #@25
    add-int v4, v1, v2

    #@27
    .line 915
    .local v4, "top":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    #@2a
    move-result v1

    #@2b
    move-object/from16 v0, v16

    #@2d
    iget v2, v0, Landroid/graphics/Insets;->left:I

    #@2f
    add-int v10, v1, v2

    #@31
    .line 916
    .local v10, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getWidth()I

    #@34
    move-result v1

    #@35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    #@38
    move-result v2

    #@39
    sub-int/2addr v1, v2

    #@3a
    move-object/from16 v0, v16

    #@3c
    iget v2, v0, Landroid/graphics/Insets;->right:I

    #@3e
    sub-int v12, v1, v2

    #@40
    .line 917
    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getHeight()I

    #@43
    move-result v1

    #@44
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    #@47
    move-result v2

    #@48
    sub-int/2addr v1, v2

    #@49
    move-object/from16 v0, v16

    #@4b
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    #@4d
    sub-int v6, v1, v2

    #@4f
    .line 919
    .local v6, "bottom":I
    move-object/from16 v0, p0

    #@51
    iget-object v1, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@53
    iget-object v0, v1, Landroid/widget/GridLayout$Axis;->locations:[I

    #@55
    move-object/from16 v18, v0

    #@57
    .line 920
    .local v18, "xs":[I
    if-eqz v18, :cond_0

    #@59
    .line 921
    const/4 v15, 0x0

    #@5a
    .local v15, "i":I
    move-object/from16 v0, v18

    #@5c
    array-length v0, v0

    #@5d
    move/from16 v17, v0

    #@5f
    .local v17, "length":I
    :goto_0
    move/from16 v0, v17

    #@61
    if-ge v15, v0, :cond_0

    #@63
    .line 922
    aget v1, v18, v15

    #@65
    add-int v3, v10, v1

    #@67
    .local v3, "x":I
    move-object/from16 v1, p0

    #@69
    move-object/from16 v2, p1

    #@6b
    move v5, v3

    #@6c
    .line 923
    invoke-direct/range {v1 .. v7}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    #@6f
    .line 921
    add-int/lit8 v15, v15, 0x1

    #@71
    goto :goto_0

    #@72
    .line 927
    .end local v3    # "x":I
    .end local v15    # "i":I
    .end local v17    # "length":I
    :cond_0
    move-object/from16 v0, p0

    #@74
    iget-object v1, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@76
    iget-object v0, v1, Landroid/widget/GridLayout$Axis;->locations:[I

    #@78
    move-object/from16 v19, v0

    #@7a
    .line 928
    .local v19, "ys":[I
    if-eqz v19, :cond_1

    #@7c
    .line 929
    const/4 v15, 0x0

    #@7d
    .restart local v15    # "i":I
    move-object/from16 v0, v19

    #@7f
    array-length v0, v0

    #@80
    move/from16 v17, v0

    #@82
    .restart local v17    # "length":I
    :goto_1
    move/from16 v0, v17

    #@84
    if-ge v15, v0, :cond_1

    #@86
    .line 930
    aget v1, v19, v15

    #@88
    add-int v11, v4, v1

    #@8a
    .local v11, "y":I
    move-object/from16 v8, p0

    #@8c
    move-object/from16 v9, p1

    #@8e
    move v13, v11

    #@8f
    move-object v14, v7

    #@90
    .line 931
    invoke-direct/range {v8 .. v14}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    #@93
    .line 929
    add-int/lit8 v15, v15, 0x1

    #@95
    goto :goto_1

    #@96
    .line 935
    .end local v11    # "y":I
    .end local v15    # "i":I
    .end local v17    # "length":I
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    #@99
    .line 907
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 891
    new-instance v2, Landroid/widget/GridLayout$LayoutParams;

    #@4
    invoke-direct {v2}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    #@7
    .line 892
    .local v2, "lp":Landroid/widget/GridLayout$LayoutParams;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    #@b
    move-result v3

    #@c
    if-ge v1, v3, :cond_0

    #@e
    .line 893
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    .line 895
    .local v0, "c":Landroid/view/View;
    invoke-virtual {p0, v0, v8, v8}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    #@15
    move-result v3

    #@16
    .line 896
    invoke-virtual {p0, v0, v7, v8}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    #@19
    move-result v4

    #@1a
    .line 897
    invoke-virtual {p0, v0, v8, v7}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    #@1d
    move-result v5

    #@1e
    .line 898
    invoke-virtual {p0, v0, v7, v7}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    #@21
    move-result v6

    #@22
    .line 894
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    #@25
    .line 899
    invoke-virtual {v2, v0, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    #@28
    .line 892
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 889
    .end local v0    # "c":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 51
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 1102
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    #@3
    .line 1104
    sub-int v43, p4, p2

    #@5
    .line 1105
    .local v43, "targetWidth":I
    sub-int v42, p5, p3

    #@7
    .line 1107
    .local v42, "targetHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    #@a
    move-result v34

    #@b
    .line 1108
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    #@e
    move-result v36

    #@f
    .line 1109
    .local v36, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    #@12
    move-result v35

    #@13
    .line 1110
    .local v35, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    #@16
    move-result v33

    #@17
    .line 1112
    .local v33, "paddingBottom":I
    move-object/from16 v0, p0

    #@19
    iget-object v3, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@1b
    sub-int v6, v43, v34

    #@1d
    sub-int v6, v6, v35

    #@1f
    invoke-virtual {v3, v6}, Landroid/widget/GridLayout$Axis;->layout(I)V

    #@22
    .line 1113
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@26
    sub-int v6, v42, v36

    #@28
    sub-int v6, v6, v33

    #@2a
    invoke-virtual {v3, v6}, Landroid/widget/GridLayout$Axis;->layout(I)V

    #@2d
    .line 1115
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@31
    invoke-virtual {v3}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    #@34
    move-result-object v26

    #@35
    .line 1116
    .local v26, "hLocations":[I
    move-object/from16 v0, p0

    #@37
    iget-object v3, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@39
    invoke-virtual {v3}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    #@3c
    move-result-object v45

    #@3d
    .line 1118
    .local v45, "vLocations":[I
    const/16 v28, 0x0

    #@3f
    .local v28, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    #@42
    move-result v12

    #@43
    .local v12, "N":I
    :goto_0
    move/from16 v0, v28

    #@45
    if-ge v0, v12, :cond_4

    #@47
    .line 1119
    move-object/from16 v0, p0

    #@49
    move/from16 v1, v28

    #@4b
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@4e
    move-result-object v4

    #@4f
    .line 1120
    .local v4, "c":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@52
    move-result v3

    #@53
    const/16 v6, 0x8

    #@55
    if-ne v3, v6, :cond_0

    #@57
    .line 1118
    :goto_1
    add-int/lit8 v28, v28, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 1121
    :cond_0
    move-object/from16 v0, p0

    #@5c
    invoke-virtual {v0, v4}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    #@5f
    move-result-object v30

    #@60
    .line 1122
    .local v30, "lp":Landroid/widget/GridLayout$LayoutParams;
    move-object/from16 v0, v30

    #@62
    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@64
    move-object/from16 v20, v0

    #@66
    .line 1123
    .local v20, "columnSpec":Landroid/widget/GridLayout$Spec;
    move-object/from16 v0, v30

    #@68
    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@6a
    move-object/from16 v39, v0

    #@6c
    .line 1125
    .local v39, "rowSpec":Landroid/widget/GridLayout$Spec;
    move-object/from16 v0, v20

    #@6e
    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@70
    move-object/from16 v19, v0

    #@72
    .line 1126
    .local v19, "colSpan":Landroid/widget/GridLayout$Interval;
    move-object/from16 v0, v39

    #@74
    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@76
    move-object/from16 v38, v0

    #@78
    .line 1128
    .local v38, "rowSpan":Landroid/widget/GridLayout$Interval;
    move-object/from16 v0, v19

    #@7a
    iget v3, v0, Landroid/widget/GridLayout$Interval;->min:I

    #@7c
    aget v47, v26, v3

    #@7e
    .line 1129
    .local v47, "x1":I
    move-object/from16 v0, v38

    #@80
    iget v3, v0, Landroid/widget/GridLayout$Interval;->min:I

    #@82
    aget v49, v45, v3

    #@84
    .line 1131
    .local v49, "y1":I
    move-object/from16 v0, v19

    #@86
    iget v3, v0, Landroid/widget/GridLayout$Interval;->max:I

    #@88
    aget v48, v26, v3

    #@8a
    .line 1132
    .local v48, "x2":I
    move-object/from16 v0, v38

    #@8c
    iget v3, v0, Landroid/widget/GridLayout$Interval;->max:I

    #@8e
    aget v50, v45, v3

    #@90
    .line 1134
    .local v50, "y2":I
    sub-int v18, v48, v47

    #@92
    .line 1135
    .local v18, "cellWidth":I
    sub-int v17, v50, v49

    #@94
    .line 1137
    .local v17, "cellHeight":I
    const/4 v3, 0x1

    #@95
    move-object/from16 v0, p0

    #@97
    invoke-direct {v0, v4, v3}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    #@9a
    move-result v32

    #@9b
    .line 1138
    .local v32, "pWidth":I
    const/4 v3, 0x0

    #@9c
    move-object/from16 v0, p0

    #@9e
    invoke-direct {v0, v4, v3}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    #@a1
    move-result v31

    #@a2
    .line 1140
    .local v31, "pHeight":I
    const/4 v3, 0x1

    #@a3
    move-object/from16 v0, v20

    #@a5
    invoke-static {v0, v3}, Landroid/widget/GridLayout$Spec;->-wrap0(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    #@a8
    move-result-object v5

    #@a9
    .line 1141
    .local v5, "hAlign":Landroid/widget/GridLayout$Alignment;
    const/4 v3, 0x0

    #@aa
    move-object/from16 v0, v39

    #@ac
    invoke-static {v0, v3}, Landroid/widget/GridLayout$Spec;->-wrap0(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    #@af
    move-result-object v9

    #@b0
    .line 1143
    .local v9, "vAlign":Landroid/widget/GridLayout$Alignment;
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@b4
    invoke-virtual {v3}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    #@b7
    move-result-object v3

    #@b8
    move/from16 v0, v28

    #@ba
    invoke-virtual {v3, v0}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    #@bd
    move-result-object v2

    #@be
    check-cast v2, Landroid/widget/GridLayout$Bounds;

    #@c0
    .line 1144
    .local v2, "boundsX":Landroid/widget/GridLayout$Bounds;
    move-object/from16 v0, p0

    #@c2
    iget-object v3, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@c4
    invoke-virtual {v3}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    #@c7
    move-result-object v3

    #@c8
    move/from16 v0, v28

    #@ca
    invoke-virtual {v3, v0}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    #@cd
    move-result-object v16

    #@ce
    check-cast v16, Landroid/widget/GridLayout$Bounds;

    #@d0
    .line 1147
    .local v16, "boundsY":Landroid/widget/GridLayout$Bounds;
    const/4 v3, 0x1

    #@d1
    invoke-virtual {v2, v3}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    #@d4
    move-result v3

    #@d5
    sub-int v3, v18, v3

    #@d7
    invoke-virtual {v5, v4, v3}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    #@da
    move-result v24

    #@db
    .line 1148
    .local v24, "gravityOffsetX":I
    const/4 v3, 0x1

    #@dc
    move-object/from16 v0, v16

    #@de
    invoke-virtual {v0, v3}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    #@e1
    move-result v3

    #@e2
    sub-int v3, v17, v3

    #@e4
    invoke-virtual {v9, v4, v3}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    #@e7
    move-result v25

    #@e8
    .line 1150
    .local v25, "gravityOffsetY":I
    const/4 v3, 0x1

    #@e9
    const/4 v6, 0x1

    #@ea
    move-object/from16 v0, p0

    #@ec
    invoke-direct {v0, v4, v3, v6}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    #@ef
    move-result v29

    #@f0
    .line 1151
    .local v29, "leftMargin":I
    const/4 v3, 0x0

    #@f1
    const/4 v6, 0x1

    #@f2
    move-object/from16 v0, p0

    #@f4
    invoke-direct {v0, v4, v3, v6}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    #@f7
    move-result v44

    #@f8
    .line 1152
    .local v44, "topMargin":I
    const/4 v3, 0x1

    #@f9
    const/4 v6, 0x0

    #@fa
    move-object/from16 v0, p0

    #@fc
    invoke-direct {v0, v4, v3, v6}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    #@ff
    move-result v37

    #@100
    .line 1153
    .local v37, "rightMargin":I
    const/4 v3, 0x0

    #@101
    const/4 v6, 0x0

    #@102
    move-object/from16 v0, p0

    #@104
    invoke-direct {v0, v4, v3, v6}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    #@107
    move-result v15

    #@108
    .line 1155
    .local v15, "bottomMargin":I
    add-int v40, v29, v37

    #@10a
    .line 1156
    .local v40, "sumMarginsX":I
    add-int v41, v44, v15

    #@10c
    .line 1159
    .local v41, "sumMarginsY":I
    add-int v6, v32, v40

    #@10e
    const/4 v7, 0x1

    #@10f
    move-object/from16 v3, p0

    #@111
    invoke-virtual/range {v2 .. v7}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    #@114
    move-result v13

    #@115
    .line 1160
    .local v13, "alignmentOffsetX":I
    add-int v10, v31, v41

    #@117
    const/4 v11, 0x0

    #@118
    move-object/from16 v6, v16

    #@11a
    move-object/from16 v7, p0

    #@11c
    move-object v8, v4

    #@11d
    invoke-virtual/range {v6 .. v11}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    #@120
    move-result v14

    #@121
    .line 1162
    .local v14, "alignmentOffsetY":I
    sub-int v3, v18, v40

    #@123
    move/from16 v0, v32

    #@125
    invoke-virtual {v5, v4, v0, v3}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    #@128
    move-result v46

    #@129
    .line 1163
    .local v46, "width":I
    sub-int v3, v17, v41

    #@12b
    move/from16 v0, v31

    #@12d
    invoke-virtual {v9, v4, v0, v3}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    #@130
    move-result v27

    #@131
    .line 1165
    .local v27, "height":I
    add-int v3, v47, v24

    #@133
    add-int v23, v3, v13

    #@135
    .line 1167
    .local v23, "dx":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    #@138
    move-result v3

    #@139
    if-nez v3, :cond_3

    #@13b
    add-int v3, v34, v29

    #@13d
    add-int v21, v3, v23

    #@13f
    .line 1169
    .local v21, "cx":I
    :goto_2
    add-int v3, v36, v49

    #@141
    add-int v3, v3, v25

    #@143
    add-int/2addr v3, v14

    #@144
    add-int v22, v3, v44

    #@146
    .line 1171
    .local v22, "cy":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@149
    move-result v3

    #@14a
    move/from16 v0, v46

    #@14c
    if-ne v0, v3, :cond_1

    #@14e
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@151
    move-result v3

    #@152
    move/from16 v0, v27

    #@154
    if-eq v0, v3, :cond_2

    #@156
    .line 1172
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    #@158
    move/from16 v0, v46

    #@15a
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@15d
    move-result v3

    #@15e
    const/high16 v6, 0x40000000    # 2.0f

    #@160
    move/from16 v0, v27

    #@162
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@165
    move-result v6

    #@166
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    #@169
    .line 1174
    :cond_2
    add-int v3, v21, v46

    #@16b
    add-int v6, v22, v27

    #@16d
    move/from16 v0, v21

    #@16f
    move/from16 v1, v22

    #@171
    invoke-virtual {v4, v0, v1, v3, v6}, Landroid/view/View;->layout(IIII)V

    #@174
    goto/16 :goto_1

    #@176
    .line 1168
    .end local v21    # "cx":I
    .end local v22    # "cy":I
    :cond_3
    sub-int v3, v43, v46

    #@178
    sub-int v3, v3, v35

    #@17a
    sub-int v3, v3, v37

    #@17c
    sub-int v21, v3, v23

    #@17e
    .restart local v21    # "cx":I
    goto :goto_2

    #@17f
    .line 1101
    .end local v2    # "boundsX":Landroid/widget/GridLayout$Bounds;
    .end local v4    # "c":Landroid/view/View;
    .end local v5    # "hAlign":Landroid/widget/GridLayout$Alignment;
    .end local v9    # "vAlign":Landroid/widget/GridLayout$Alignment;
    .end local v13    # "alignmentOffsetX":I
    .end local v14    # "alignmentOffsetY":I
    .end local v15    # "bottomMargin":I
    .end local v16    # "boundsY":Landroid/widget/GridLayout$Bounds;
    .end local v17    # "cellHeight":I
    .end local v18    # "cellWidth":I
    .end local v19    # "colSpan":Landroid/widget/GridLayout$Interval;
    .end local v20    # "columnSpec":Landroid/widget/GridLayout$Spec;
    .end local v21    # "cx":I
    .end local v23    # "dx":I
    .end local v24    # "gravityOffsetX":I
    .end local v25    # "gravityOffsetY":I
    .end local v27    # "height":I
    .end local v29    # "leftMargin":I
    .end local v30    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v31    # "pHeight":I
    .end local v32    # "pWidth":I
    .end local v37    # "rightMargin":I
    .end local v38    # "rowSpan":Landroid/widget/GridLayout$Interval;
    .end local v39    # "rowSpec":Landroid/widget/GridLayout$Spec;
    .end local v40    # "sumMarginsX":I
    .end local v41    # "sumMarginsY":I
    .end local v44    # "topMargin":I
    .end local v46    # "width":I
    .end local v47    # "x1":I
    .end local v48    # "x2":I
    .end local v49    # "y1":I
    .end local v50    # "y2":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1033
    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    #@4
    .line 1037
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    #@7
    .line 1039
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    #@a
    move-result v8

    #@b
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    #@e
    move-result v9

    #@f
    add-int v0, v8, v9

    #@11
    .line 1040
    .local v0, "hPadding":I
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    #@14
    move-result v8

    #@15
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    #@18
    move-result v9

    #@19
    add-int v5, v8, v9

    #@1b
    .line 1042
    .local v5, "vPadding":I
    neg-int v8, v0

    #@1c
    invoke-static {p1, v8}, Landroid/widget/GridLayout;->adjust(II)I

    #@1f
    move-result v7

    #@20
    .line 1043
    .local v7, "widthSpecSansPadding":I
    neg-int v8, v5

    #@21
    invoke-static {p2, v8}, Landroid/widget/GridLayout;->adjust(II)I

    #@24
    move-result v2

    #@25
    .line 1045
    .local v2, "heightSpecSansPadding":I
    const/4 v8, 0x1

    #@26
    invoke-direct {p0, v7, v2, v8}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    #@29
    .line 1051
    iget v8, p0, Landroid/widget/GridLayout;->mOrientation:I

    #@2b
    if-nez v8, :cond_0

    #@2d
    .line 1052
    iget-object v8, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@2f
    invoke-virtual {v8, v7}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    #@32
    move-result v6

    #@33
    .line 1053
    .local v6, "widthSansPadding":I
    invoke-direct {p0, v7, v2, v10}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    #@36
    .line 1054
    iget-object v8, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@38
    invoke-virtual {v8, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    #@3b
    move-result v1

    #@3c
    .line 1061
    .local v1, "heightSansPadding":I
    :goto_0
    add-int v8, v6, v0

    #@3e
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumWidth()I

    #@41
    move-result v9

    #@42
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@45
    move-result v4

    #@46
    .line 1062
    .local v4, "measuredWidth":I
    add-int v8, v1, v5

    #@48
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumHeight()I

    #@4b
    move-result v9

    #@4c
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@4f
    move-result v3

    #@50
    .line 1065
    .local v3, "measuredHeight":I
    invoke-static {v4, p1, v10}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    #@53
    move-result v8

    #@54
    .line 1066
    invoke-static {v3, p2, v10}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    #@57
    move-result v9

    #@58
    .line 1064
    invoke-virtual {p0, v8, v9}, Landroid/widget/GridLayout;->setMeasuredDimension(II)V

    #@5b
    .line 1032
    return-void

    #@5c
    .line 1056
    .end local v1    # "heightSansPadding":I
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local v6    # "widthSansPadding":I
    :cond_0
    iget-object v8, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@5e
    invoke-virtual {v8, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    #@61
    move-result v1

    #@62
    .line 1057
    .restart local v1    # "heightSansPadding":I
    invoke-direct {p0, v7, v2, v10}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    #@65
    .line 1058
    iget-object v8, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@67
    invoke-virtual {v8, v7}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    #@6a
    move-result v6

    #@6b
    .restart local v6    # "widthSansPadding":I
    goto :goto_0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 809
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 811
    invoke-virtual {p0, p2}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 812
    const-string/jumbo v0, "supplied LayoutParams are of the wrong type"

    #@c
    invoke-static {v0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    #@f
    .line 815
    :cond_0
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    #@12
    .line 808
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 940
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    #@3
    .line 941
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    #@6
    .line 939
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 946
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    #@3
    .line 947
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    #@6
    .line 945
    return-void
.end method

.method public requestLayout()V
    .locals 0

    #@0
    .prologue
    .line 1082
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@3
    .line 1083
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    #@6
    .line 1081
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .param p1, "alignmentMode"    # I

    #@0
    .prologue
    .line 506
    iput p1, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    #@2
    .line 507
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    #@5
    .line 505
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .param p1, "columnCount"    # I

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    #@5
    .line 424
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    #@8
    .line 425
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    #@b
    .line 422
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .param p1, "columnOrderPreserved"    # Z

    #@0
    .prologue
    .line 577
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    #@5
    .line 578
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    #@8
    .line 579
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    #@b
    .line 576
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    #@0
    .prologue
    .line 355
    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 356
    iput p1, p0, Landroid/widget/GridLayout;->mOrientation:I

    #@6
    .line 357
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    #@9
    .line 358
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    #@c
    .line 354
    :cond_0
    return-void
.end method

.method public setPrinter(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    #@0
    .prologue
    .line 606
    if-nez p1, :cond_0

    #@2
    sget-object p1, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    #@4
    .end local p1    # "printer":Landroid/util/Printer;
    :cond_0
    iput-object p1, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    #@6
    .line 605
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .param p1, "rowCount"    # I

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    #@5
    .line 391
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    #@8
    .line 392
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    #@b
    .line 389
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .param p1, "rowOrderPreserved"    # Z

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    #@5
    .line 542
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    #@8
    .line 543
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    #@b
    .line 540
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .param p1, "useDefaultMargins"    # Z

    #@0
    .prologue
    .line 469
    iput-boolean p1, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    #@2
    .line 470
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    #@5
    .line 468
    return-void
.end method
