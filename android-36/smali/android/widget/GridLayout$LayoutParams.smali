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
.field private static final greylist-max-o BOTTOM_MARGIN:I = 0x6

.field private static final greylist-max-o COLUMN:I = 0x1

.field private static final greylist-max-o COLUMN_SPAN:I = 0x4

.field private static final greylist-max-o COLUMN_WEIGHT:I = 0x6

.field private static final greylist-max-o DEFAULT_COLUMN:I = -0x80000000

.field private static final greylist-max-o DEFAULT_HEIGHT:I = -0x2

.field private static final greylist-max-o DEFAULT_MARGIN:I = -0x80000000

.field private static final greylist-max-o DEFAULT_ROW:I = -0x80000000

.field private static final greylist-max-o DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

.field private static final greylist-max-o DEFAULT_SPAN_SIZE:I

.field private static final greylist-max-o DEFAULT_WIDTH:I = -0x2

.field private static final greylist-max-o GRAVITY:I = 0x0

.field private static final greylist-max-o LEFT_MARGIN:I = 0x3

.field private static final greylist-max-o MARGIN:I = 0x2

.field private static final greylist-max-o RIGHT_MARGIN:I = 0x5

.field private static final greylist-max-o ROW:I = 0x2

.field private static final greylist-max-o ROW_SPAN:I = 0x3

.field private static final greylist-max-o ROW_WEIGHT:I = 0x5

.field private static final greylist-max-o TOP_MARGIN:I = 0x4


# instance fields
.field public whitelist columnSpec:Landroid/widget/GridLayout$Spec;

.field public whitelist rowSpec:Landroid/widget/GridLayout$Spec;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2029
    new-instance v0, Landroid/widget/GridLayout$Interval;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    sput-object v0, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

    .line 2030
    sget-object v0, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v0

    sput v0, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 2111
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    sget-object v1, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 2112
    return-void
.end method

.method private constructor greylist-max-o <init>(IIIIIILandroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "rowSpec"    # Landroid/widget/GridLayout$Spec;
    .param p8, "columnSpec"    # Landroid/widget/GridLayout$Spec;

    .line 2087
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2065
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2079
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2088
    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 2089
    iput-object p7, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2090
    iput-object p8, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2091
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2152
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2065
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2079
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2153
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2154
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2155
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2120
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2065
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2079
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2121
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2127
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2065
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2079
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2128
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/GridLayout$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/widget/GridLayout$LayoutParams;

    .line 2137
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2065
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2079
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2139
    iget-object v0, p1, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2140
    iget-object v0, p1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2141
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V
    .registers 12
    .param p1, "rowSpec"    # Landroid/widget/GridLayout$Spec;
    .param p2, "columnSpec"    # Landroid/widget/GridLayout$Spec;

    .line 2102
    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/high16 v3, -0x80000000

    const/high16 v4, -0x80000000

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    .end local p1    # "rowSpec":Landroid/widget/GridLayout$Spec;
    .end local p2    # "columnSpec":Landroid/widget/GridLayout$Spec;
    .local v7, "rowSpec":Landroid/widget/GridLayout$Spec;
    .local v8, "columnSpec":Landroid/widget/GridLayout$Spec;
    invoke-direct/range {v0 .. v8}, Landroid/widget/GridLayout$LayoutParams;-><init>(IIIIIILandroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 2105
    return-void
.end method

.method private greylist-max-o init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2184
    sget-object v0, Lcom/android/internal/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2186
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 2188
    .local v2, "gravity":I
    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 2189
    .local v5, "column":I
    sget v6, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 2190
    .local v6, "colSpan":I
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 2191
    .local v7, "colWeight":F
    invoke-static {v2, v4}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v4

    invoke-static {v5, v6, v4, v7}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2193
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2194
    .local v3, "row":I
    sget v4, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    const/4 v9, 0x3

    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2195
    .local v4, "rowSpan":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 2196
    .local v8, "rowWeight":F
    invoke-static {v2, v1}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v1

    invoke-static {v3, v4, v1, v8}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_49

    .line 2198
    .end local v2    # "gravity":I
    .end local v3    # "row":I
    .end local v4    # "rowSpan":I
    .end local v5    # "column":I
    .end local v6    # "colSpan":I
    .end local v7    # "colWeight":F
    .end local v8    # "rowWeight":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2199
    nop

    .line 2200
    return-void

    .line 2198
    :catchall_49
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2199
    throw v1
.end method

.method private greylist-max-o reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2169
    sget-object v0, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    .line 2170
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2172
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const/high16 v2, -0x80000000

    :try_start_9
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 2174
    .local v1, "margin":I
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 2175
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 2176
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 2177
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2e

    .line 2179
    .end local v1    # "margin":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2180
    nop

    .line 2181
    return-void

    .line 2179
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2180
    throw v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2231
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2232
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 2234
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/widget/GridLayout$LayoutParams;

    .line 2236
    .local v2, "that":Landroid/widget/GridLayout$LayoutParams;
    iget-object v3, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    iget-object v4, v2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    return v1

    .line 2237
    :cond_20
    iget-object v3, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    iget-object v4, v2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    return v1

    .line 2239
    :cond_2b
    return v0

    .line 2232
    .end local v2    # "that":Landroid/widget/GridLayout$LayoutParams;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2244
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Spec;->hashCode()I

    move-result v0

    .line 2245
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v2}, Landroid/widget/GridLayout$Spec;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2246
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method protected whitelist setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .registers 6
    .param p1, "attributes"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .line 2217
    const/4 v0, -0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 2218
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 2219
    return-void
.end method

.method final greylist-max-o setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V
    .registers 3
    .param p1, "span"    # Landroid/widget/GridLayout$Interval;

    .line 2226
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Spec;->copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2227
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 4
    .param p1, "gravity"    # I

    .line 2211
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2212
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2213
    return-void
.end method

.method final greylist-max-o setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V
    .registers 3
    .param p1, "span"    # Landroid/widget/GridLayout$Interval;

    .line 2222
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Spec;->copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2223
    return-void
.end method
