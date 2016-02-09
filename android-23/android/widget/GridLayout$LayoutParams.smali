.class public Landroid/widget/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final BOTTOM_MARGIN:I = 0x6

.field private static final COLUMN:I = 0x1

.field private static final COLUMN_SPAN:I = 0x4

.field private static final COLUMN_WEIGHT:I = 0x6

.field private static final DEFAULT_COLUMN:I = -0x80000000

.field private static final DEFAULT_HEIGHT:I = -0x2

.field private static final DEFAULT_MARGIN:I = -0x80000000

.field private static final DEFAULT_ROW:I = -0x80000000

.field private static final DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

.field private static final DEFAULT_SPAN_SIZE:I

.field private static final DEFAULT_WIDTH:I = -0x2

.field private static final GRAVITY:I = 0x0

.field private static final LEFT_MARGIN:I = 0x3

.field private static final MARGIN:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x5

.field private static final ROW:I = 0x2

.field private static final ROW_SPAN:I = 0x3

.field private static final ROW_WEIGHT:I = 0x5

.field private static final TOP_MARGIN:I = 0x4


# instance fields
.field public columnSpec:Landroid/widget/GridLayout$Spec;

.field public rowSpec:Landroid/widget/GridLayout$Spec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 1983
    new-instance v0, Landroid/widget/GridLayout$Interval;

    #@2
    const/high16 v1, -0x80000000

    #@4
    const v2, -0x7fffffff

    #@7
    invoke-direct {v0, v1, v2}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    #@a
    sput-object v0, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

    #@c
    .line 1984
    sget-object v0, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

    #@e
    invoke-virtual {v0}, Landroid/widget/GridLayout$Interval;->size()I

    #@11
    move-result v0

    #@12
    sput v0, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    #@14
    .line 1974
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 2065
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@2
    sget-object v1, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@4
    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    #@7
    .line 2064
    return-void
.end method

.method private constructor <init>(IIIIIILandroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "rowSpec"    # Landroid/widget/GridLayout$Spec;
    .param p8, "columnSpec"    # Landroid/widget/GridLayout$Spec;

    #@0
    .prologue
    .line 2041
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@3
    .line 2019
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@5
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@7
    .line 2033
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@9
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@b
    .line 2042
    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    #@e
    .line 2043
    iput-object p7, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@10
    .line 2044
    iput-object p8, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@12
    .line 2040
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 2106
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 2019
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@5
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@7
    .line 2033
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@9
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@b
    .line 2107
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@e
    .line 2108
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@11
    .line 2105
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2074
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 2019
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@5
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@7
    .line 2033
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@9
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@b
    .line 2073
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;

    #@0
    .prologue
    .line 2081
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 2019
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@5
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@7
    .line 2033
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@9
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@b
    .line 2080
    return-void
.end method

.method public constructor <init>(Landroid/widget/GridLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/GridLayout$LayoutParams;

    #@0
    .prologue
    .line 2091
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 2019
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@5
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@7
    .line 2033
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@9
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@b
    .line 2093
    iget-object v0, p1, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@d
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@f
    .line 2094
    iget-object v0, p1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@11
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@13
    .line 2090
    return-void
.end method

.method public constructor <init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V
    .locals 9
    .param p1, "rowSpec"    # Landroid/widget/GridLayout$Spec;
    .param p2, "columnSpec"    # Landroid/widget/GridLayout$Spec;

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    const/high16 v3, -0x80000000

    #@3
    move-object v0, p0

    #@4
    move v2, v1

    #@5
    move v4, v3

    #@6
    move v5, v3

    #@7
    move v6, v3

    #@8
    move-object v7, p1

    #@9
    move-object v8, p2

    #@a
    .line 2056
    invoke-direct/range {v0 .. v8}, Landroid/widget/GridLayout$LayoutParams;-><init>(IIIIIILandroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    #@d
    .line 2055
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 2138
    sget-object v8, Lcom/android/internal/R$styleable;->GridLayout_Layout:[I

    #@2
    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 2140
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    #@7
    const/4 v9, 0x0

    #@8
    :try_start_0
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b
    move-result v4

    #@c
    .line 2142
    .local v4, "gravity":I
    const/4 v8, 0x1

    #@d
    const/high16 v9, -0x80000000

    #@f
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@12
    move-result v3

    #@13
    .line 2143
    .local v3, "column":I
    sget v8, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    #@15
    const/4 v9, 0x4

    #@16
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@19
    move-result v1

    #@1a
    .line 2144
    .local v1, "colSpan":I
    const/4 v8, 0x6

    #@1b
    const/4 v9, 0x0

    #@1c
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1f
    move-result v2

    #@20
    .line 2145
    .local v2, "colWeight":F
    const/4 v8, 0x1

    #@21
    invoke-static {v4, v8}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    #@24
    move-result-object v8

    #@25
    invoke-static {v3, v1, v8, v2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    #@28
    move-result-object v8

    #@29
    iput-object v8, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@2b
    .line 2147
    const/4 v8, 0x2

    #@2c
    const/high16 v9, -0x80000000

    #@2e
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@31
    move-result v5

    #@32
    .line 2148
    .local v5, "row":I
    sget v8, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    #@34
    const/4 v9, 0x3

    #@35
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@38
    move-result v6

    #@39
    .line 2149
    .local v6, "rowSpan":I
    const/4 v8, 0x5

    #@3a
    const/4 v9, 0x0

    #@3b
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3e
    move-result v7

    #@3f
    .line 2150
    .local v7, "rowWeight":F
    const/4 v8, 0x0

    #@40
    invoke-static {v4, v8}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    #@43
    move-result-object v8

    #@44
    invoke-static {v5, v6, v8, v7}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    #@47
    move-result-object v8

    #@48
    iput-object v8, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 2152
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@4d
    .line 2137
    return-void

    #@4e
    .line 2151
    .end local v1    # "colSpan":I
    .end local v2    # "colWeight":F
    .end local v3    # "column":I
    .end local v4    # "gravity":I
    .end local v5    # "row":I
    .end local v6    # "rowSpan":I
    .end local v7    # "rowWeight":F
    :catchall_0
    move-exception v8

    #@4f
    .line 2152
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@52
    .line 2151
    throw v8
.end method

.method private reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 2124
    sget-object v2, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    #@2
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 2126
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    #@7
    const/high16 v3, -0x80000000

    #@9
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@c
    move-result v1

    #@d
    .line 2128
    .local v1, "margin":I
    const/4 v2, 0x3

    #@e
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@11
    move-result v2

    #@12
    iput v2, p0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    #@14
    .line 2129
    const/4 v2, 0x4

    #@15
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@18
    move-result v2

    #@19
    iput v2, p0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    #@1b
    .line 2130
    const/4 v2, 0x5

    #@1c
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1f
    move-result v2

    #@20
    iput v2, p0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    #@22
    .line 2131
    const/4 v2, 0x6

    #@23
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@26
    move-result v2

    #@27
    iput v2, p0, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 2133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2c
    .line 2122
    return-void

    #@2d
    .line 2132
    .end local v1    # "margin":I
    :catchall_0
    move-exception v2

    #@2e
    .line 2133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@31
    .line 2132
    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2185
    if-ne p0, p1, :cond_0

    #@4
    return v4

    #@5
    .line 2186
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/widget/GridLayout$LayoutParams;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 2188
    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    #@15
    .line 2190
    .local v0, "that":Landroid/widget/GridLayout$LayoutParams;
    iget-object v1, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@17
    iget-object v2, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@19
    invoke-virtual {v1, v2}, Landroid/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_3

    #@1f
    return v3

    #@20
    .line 2191
    :cond_3
    iget-object v1, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@22
    iget-object v2, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@24
    invoke-virtual {v1, v2}, Landroid/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_4

    #@2a
    return v3

    #@2b
    .line 2193
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 2198
    iget-object v1, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@2
    invoke-virtual {v1}, Landroid/widget/GridLayout$Spec;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 2199
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@8
    iget-object v2, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@a
    invoke-virtual {v2}, Landroid/widget/GridLayout$Spec;->hashCode()I

    #@d
    move-result v2

    #@e
    add-int v0, v1, v2

    #@10
    .line 2200
    return v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2
    .param p1, "attributes"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    .line 2171
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/widget/GridLayout$LayoutParams;->width:I

    #@7
    .line 2172
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/widget/GridLayout$LayoutParams;->height:I

    #@d
    .line 2170
    return-void
.end method

.method final setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V
    .locals 1
    .param p1, "span"    # Landroid/widget/GridLayout$Interval;

    #@0
    .prologue
    .line 2180
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Spec;->copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@8
    .line 2179
    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 2165
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p1, v1}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@d
    .line 2166
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-static {p1, v1}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@1a
    .line 2164
    return-void
.end method

.method final setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V
    .locals 1
    .param p1, "span"    # Landroid/widget/GridLayout$Interval;

    #@0
    .prologue
    .line 2176
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Spec;->copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@8
    .line 2175
    return-void
.end method
