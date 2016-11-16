.class public Landroid/view/ViewGroup$MarginLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# static fields
.field public static final DEFAULT_MARGIN_RELATIVE:I = -0x80000000

.field private static final DEFAULT_MARGIN_RESOLVED:I = 0x0

.field private static final LAYOUT_DIRECTION_MASK:I = 0x3

.field private static final LEFT_MARGIN_UNDEFINED_MASK:I = 0x4

.field private static final NEED_RESOLUTION_MASK:I = 0x20

.field private static final RIGHT_MARGIN_UNDEFINED_MASK:I = 0x8

.field private static final RTL_COMPATIBILITY_MODE_MASK:I = 0x10

.field private static final UNDEFINED_MARGIN:I = -0x80000000


# instance fields
.field public bottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private endMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public leftMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field mMarginFlags:B
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LAYOUT_DIRECTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "LEFT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "RIGHT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "RTL_COMPATIBILITY_MODE_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NEED_RESOLUTION_MASK"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public rightMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private startMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public topMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const/high16 v0, -0x80000000

    #@2
    .line 7275
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@5
    .line 7153
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@7
    .line 7161
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@9
    .line 7277
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@b
    or-int/lit8 v0, v0, 0x4

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@10
    .line 7278
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@12
    or-int/lit8 v0, v0, 0x8

    #@14
    int-to-byte v0, v0

    #@15
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@17
    .line 7280
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@19
    and-int/lit8 v0, v0, -0x21

    #@1b
    int-to-byte v0, v0

    #@1c
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@1e
    .line 7281
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@20
    and-int/lit8 v0, v0, -0x11

    #@22
    int-to-byte v0, v0

    #@23
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@25
    .line 7274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/high16 v6, -0x80000000

    #@3
    .line 7213
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    #@6
    .line 7153
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@8
    .line 7161
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@a
    .line 7215
    sget-object v4, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    #@c
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@f
    move-result-object v0

    #@10
    .line 7218
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    #@11
    .line 7216
    invoke-virtual {p0, v0, v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    #@14
    .line 7221
    const/4 v4, 0x2

    #@15
    const/4 v5, -0x1

    #@16
    .line 7220
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@19
    move-result v2

    #@1a
    .line 7222
    .local v2, "margin":I
    if-ltz v2, :cond_1

    #@1c
    .line 7223
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@1e
    .line 7224
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@20
    .line 7225
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@22
    .line 7226
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@24
    .line 7262
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    #@2b
    move-result v1

    #@2c
    .line 7263
    .local v1, "hasRtlSupport":Z
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2f
    move-result-object v4

    #@30
    iget v3, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@32
    .line 7264
    .local v3, "targetSdkVersion":I
    const/16 v4, 0x11

    #@34
    if-lt v3, v4, :cond_4

    #@36
    if-eqz v1, :cond_4

    #@38
    .line 7269
    :goto_1
    iget-byte v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@3a
    or-int/lit8 v4, v4, 0x0

    #@3c
    int-to-byte v4, v4

    #@3d
    iput-byte v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@3f
    .line 7271
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@42
    .line 7212
    return-void

    #@43
    .line 7229
    .end local v1    # "hasRtlSupport":Z
    .end local v3    # "targetSdkVersion":I
    :cond_1
    const/4 v4, 0x3

    #@44
    .line 7228
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@47
    move-result v4

    #@48
    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@4a
    .line 7231
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@4c
    if-ne v4, v6, :cond_2

    #@4e
    .line 7232
    iget-byte v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@50
    or-int/lit8 v4, v4, 0x4

    #@52
    int-to-byte v4, v4

    #@53
    iput-byte v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@55
    .line 7233
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@57
    .line 7236
    :cond_2
    const/4 v4, 0x5

    #@58
    .line 7235
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@5b
    move-result v4

    #@5c
    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@5e
    .line 7238
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@60
    if-ne v4, v6, :cond_3

    #@62
    .line 7239
    iget-byte v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@64
    or-int/lit8 v4, v4, 0x8

    #@66
    int-to-byte v4, v4

    #@67
    iput-byte v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@69
    .line 7240
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@6b
    .line 7244
    :cond_3
    const/4 v4, 0x4

    #@6c
    .line 7243
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@6f
    move-result v4

    #@70
    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@72
    .line 7247
    const/4 v4, 0x6

    #@73
    .line 7246
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@76
    move-result v4

    #@77
    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@79
    .line 7251
    const/4 v4, 0x7

    #@7a
    .line 7250
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@7d
    move-result v4

    #@7e
    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@80
    .line 7254
    const/16 v4, 0x8

    #@82
    .line 7253
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@85
    move-result v4

    #@86
    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@88
    .line 7257
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    #@8b
    move-result v4

    #@8c
    if-eqz v4, :cond_0

    #@8e
    .line 7258
    iget-byte v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@90
    or-int/lit8 v4, v4, 0x20

    #@92
    int-to-byte v4, v4

    #@93
    iput-byte v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@95
    goto :goto_0

    #@96
    .line 7265
    .restart local v1    # "hasRtlSupport":Z
    .restart local v3    # "targetSdkVersion":I
    :cond_4
    iget-byte v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@98
    or-int/lit8 v4, v4, 0x10

    #@9a
    int-to-byte v4, v4

    #@9b
    iput-byte v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@9d
    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    const/high16 v0, -0x80000000

    #@2
    .line 7304
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    .line 7153
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@7
    .line 7161
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@9
    .line 7306
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@b
    or-int/lit8 v0, v0, 0x4

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@10
    .line 7307
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@12
    or-int/lit8 v0, v0, 0x8

    #@14
    int-to-byte v0, v0

    #@15
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@17
    .line 7309
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@19
    and-int/lit8 v0, v0, -0x21

    #@1b
    int-to-byte v0, v0

    #@1c
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@1e
    .line 7310
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@20
    and-int/lit8 v0, v0, -0x11

    #@22
    int-to-byte v0, v0

    #@23
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@25
    .line 7303
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    #@0
    .prologue
    const/high16 v0, -0x80000000

    #@2
    .line 7289
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    #@5
    .line 7153
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@7
    .line 7161
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@9
    .line 7290
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@b
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@d
    .line 7291
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@f
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@11
    .line 7293
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@13
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@15
    .line 7294
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@17
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@19
    .line 7295
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@1b
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@1d
    .line 7296
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@1f
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@21
    .line 7297
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@23
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@25
    .line 7298
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@27
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@29
    .line 7300
    iget-byte v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@2b
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@2d
    .line 7289
    return-void
.end method

.method private doResolveMargins()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/high16 v3, -0x80000000

    #@3
    .line 7509
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@5
    and-int/lit8 v0, v0, 0x10

    #@7
    const/16 v2, 0x10

    #@9
    if-ne v0, v2, :cond_2

    #@b
    .line 7512
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@d
    and-int/lit8 v0, v0, 0x4

    #@f
    const/4 v1, 0x4

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 7513
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@14
    if-le v0, v3, :cond_0

    #@16
    .line 7514
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@18
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@1a
    .line 7516
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@1c
    and-int/lit8 v0, v0, 0x8

    #@1e
    const/16 v1, 0x8

    #@20
    if-ne v0, v1, :cond_1

    #@22
    .line 7517
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@24
    if-le v0, v3, :cond_1

    #@26
    .line 7518
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@28
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@2a
    .line 7540
    :cond_1
    :goto_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@2c
    and-int/lit8 v0, v0, -0x21

    #@2e
    int-to-byte v0, v0

    #@2f
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@31
    .line 7508
    return-void

    #@32
    .line 7524
    :cond_2
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@34
    and-int/lit8 v0, v0, 0x3

    #@36
    packed-switch v0, :pswitch_data_0

    #@39
    .line 7533
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@3b
    if-le v0, v3, :cond_6

    #@3d
    .line 7534
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@3f
    .line 7533
    :goto_1
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@41
    .line 7535
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@43
    if-le v0, v3, :cond_3

    #@45
    .line 7536
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@47
    .line 7535
    :cond_3
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@49
    goto :goto_0

    #@4a
    .line 7526
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@4c
    if-le v0, v3, :cond_5

    #@4e
    .line 7527
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@50
    .line 7526
    :goto_2
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@52
    .line 7528
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@54
    if-le v0, v3, :cond_4

    #@56
    .line 7529
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@58
    .line 7528
    :cond_4
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@5a
    goto :goto_0

    #@5b
    :cond_5
    move v0, v1

    #@5c
    .line 7527
    goto :goto_2

    #@5d
    :cond_6
    move v0, v1

    #@5e
    .line 7534
    goto :goto_1

    #@5f
    .line 7524
    nop

    #@60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    #@0
    .prologue
    .line 7317
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@2
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@4
    .line 7318
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@6
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@8
    .line 7319
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@a
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@c
    .line 7320
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@e
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@10
    .line 7321
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@12
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@14
    .line 7322
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@16
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@18
    .line 7324
    iget-byte v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@1a
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@1c
    .line 7316
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 7572
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 7573
    const-string/jumbo v0, "leftMargin"

    #@6
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@b
    .line 7574
    const-string/jumbo v0, "topMargin"

    #@e
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@13
    .line 7575
    const-string/jumbo v0, "rightMargin"

    #@16
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@1b
    .line 7576
    const-string/jumbo v0, "bottomMargin"

    #@1e
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@23
    .line 7577
    const-string/jumbo v0, "startMargin"

    #@26
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@2b
    .line 7578
    const-string/jumbo v0, "endMargin"

    #@2e
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@30
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@33
    .line 7571
    return-void
.end method

.method public getLayoutDirection()I
    .locals 1

    #@0
    .prologue
    .line 7488
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@2
    and-int/lit8 v0, v0, 0x3

    #@4
    return v0
.end method

.method public getMarginEnd()I
    .locals 2

    #@0
    .prologue
    .line 7436
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@8
    return v0

    #@9
    .line 7437
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@b
    and-int/lit8 v0, v0, 0x20

    #@d
    const/16 v1, 0x20

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 7438
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    #@14
    .line 7440
    :cond_1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@16
    and-int/lit8 v0, v0, 0x3

    #@18
    packed-switch v0, :pswitch_data_0

    #@1b
    .line 7445
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@1d
    return v0

    #@1e
    .line 7442
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@20
    return v0

    #@21
    .line 7440
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getMarginStart()I
    .locals 2

    #@0
    .prologue
    .line 7403
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@8
    return v0

    #@9
    .line 7404
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@b
    and-int/lit8 v0, v0, 0x20

    #@d
    const/16 v1, 0x20

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 7405
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    #@14
    .line 7407
    :cond_1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@16
    and-int/lit8 v0, v0, 0x3

    #@18
    packed-switch v0, :pswitch_data_0

    #@1b
    .line 7412
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@1d
    return v0

    #@1e
    .line 7409
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@20
    return v0

    #@21
    .line 7407
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isLayoutRtl()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 7547
    iget-byte v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@3
    and-int/lit8 v1, v1, 0x3

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isMarginRelative()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/high16 v2, -0x80000000

    #@3
    .line 7458
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@5
    if-ne v1, v2, :cond_0

    #@7
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@9
    if-eq v1, v2, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 7555
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@2
    invoke-static {v0}, Landroid/view/ViewGroup;->isLayoutModeOptical(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {p1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    #@b
    move-result-object v10

    #@c
    .line 7558
    .local v10, "oi":Landroid/graphics/Insets;
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@f
    move-result v0

    #@10
    iget v1, v10, Landroid/graphics/Insets;->left:I

    #@12
    add-int/2addr v1, v0

    #@13
    .line 7559
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@16
    move-result v0

    #@17
    iget v2, v10, Landroid/graphics/Insets;->top:I

    #@19
    add-int/2addr v2, v0

    #@1a
    .line 7560
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@1d
    move-result v0

    #@1e
    iget v3, v10, Landroid/graphics/Insets;->right:I

    #@20
    sub-int v3, v0, v3

    #@22
    .line 7561
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@25
    move-result v0

    #@26
    iget v4, v10, Landroid/graphics/Insets;->bottom:I

    #@28
    sub-int v4, v0, v4

    #@2a
    .line 7562
    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@2c
    .line 7563
    iget v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@2e
    .line 7564
    iget v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@30
    .line 7565
    iget v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@32
    move-object v0, p2

    #@33
    move-object v9, p3

    #@34
    .line 7557
    invoke-static/range {v0 .. v9}, Landroid/view/ViewGroup;->-wrap0(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    #@37
    .line 7554
    return-void

    #@38
    .line 7555
    .end local v10    # "oi":Landroid/graphics/Insets;
    :cond_0
    sget-object v10, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@3a
    .restart local v10    # "oi":Landroid/graphics/Insets;
    goto :goto_0
.end method

.method public resolveLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 7497
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    #@3
    .line 7501
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 7502
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@b
    and-int/lit8 v0, v0, 0x20

    #@d
    const/16 v1, 0x20

    #@f
    if-eq v0, v1, :cond_1

    #@11
    :cond_0
    return-void

    #@12
    .line 7505
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    #@15
    .line 7496
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 7468
    if-eqz p1, :cond_0

    #@2
    .line 7469
    const/4 v0, 0x1

    #@3
    if-eq p1, v0, :cond_0

    #@5
    return-void

    #@6
    .line 7470
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@8
    and-int/lit8 v0, v0, 0x3

    #@a
    if-eq p1, v0, :cond_1

    #@c
    .line 7471
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@e
    and-int/lit8 v0, v0, -0x4

    #@10
    int-to-byte v0, v0

    #@11
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@13
    .line 7472
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@15
    and-int/lit8 v1, p1, 0x3

    #@17
    or-int/2addr v0, v1

    #@18
    int-to-byte v0, v0

    #@19
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@1b
    .line 7473
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 7474
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@23
    or-int/lit8 v0, v0, 0x20

    #@25
    int-to-byte v0, v0

    #@26
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@28
    .line 7467
    :cond_1
    :goto_0
    return-void

    #@29
    .line 7476
    :cond_2
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@2b
    and-int/lit8 v0, v0, -0x21

    #@2d
    int-to-byte v0, v0

    #@2e
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@30
    goto :goto_0
.end method

.method public setMarginEnd(I)V
    .locals 1
    .param p1, "end"    # I

    #@0
    .prologue
    .line 7424
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@2
    .line 7425
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@4
    or-int/lit8 v0, v0, 0x20

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@9
    .line 7423
    return-void
.end method

.method public setMarginStart(I)V
    .locals 1
    .param p1, "start"    # I

    #@0
    .prologue
    .line 7391
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@2
    .line 7392
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@4
    or-int/lit8 v0, v0, 0x20

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@9
    .line 7390
    return-void
.end method

.method public setMargins(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 7344
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@2
    .line 7345
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@4
    .line 7346
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@6
    .line 7347
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@8
    .line 7348
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@a
    and-int/lit8 v0, v0, -0x5

    #@c
    int-to-byte v0, v0

    #@d
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@f
    .line 7349
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@11
    and-int/lit8 v0, v0, -0x9

    #@13
    int-to-byte v0, v0

    #@14
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@16
    .line 7350
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 7351
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@1e
    or-int/lit8 v0, v0, 0x20

    #@20
    int-to-byte v0, v0

    #@21
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@23
    .line 7343
    :goto_0
    return-void

    #@24
    .line 7353
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@26
    and-int/lit8 v0, v0, -0x21

    #@28
    int-to-byte v0, v0

    #@29
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@2b
    goto :goto_0
.end method

.method public setMarginsRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 7376
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    #@2
    .line 7377
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@4
    .line 7378
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    #@6
    .line 7379
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@8
    .line 7380
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@a
    or-int/lit8 v0, v0, 0x20

    #@c
    int-to-byte v0, v0

    #@d
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    #@f
    .line 7375
    return-void
.end method
