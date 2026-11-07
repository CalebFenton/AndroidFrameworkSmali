.class public Landroid/widget/TableRow$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final greylist-max-o LOCATION:I = 0x0

.field private static final greylist-max-o LOCATION_NEXT:I = 0x1


# instance fields
.field public whitelist column:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mOffset:[I

.field public whitelist span:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 467
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 415
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 468
    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 469
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 470
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "column"    # I

    .line 482
    invoke-direct {p0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 483
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 484
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 443
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 415
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 444
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 445
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 446
    return-void
.end method

.method public constructor whitelist <init>(IIF)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "initWeight"    # F

    .line 456
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 415
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 457
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 458
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 459
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 421
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 415
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 423
    sget-object v0, Lcom/android/internal/R$styleable;->TableRow_Cell:[I

    .line 424
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 427
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 428
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 429
    iget v2, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    if-gt v2, v1, :cond_23

    .line 430
    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 433
    :cond_23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 434
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 490
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 491
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 497
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 415
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 498
    return-void
.end method


# virtual methods
.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 520
    invoke-super {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 521
    const-string v0, "layout:column"

    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 522
    const-string v0, "layout:span"

    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 523
    return-void
.end method

.method protected whitelist setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .line 503
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 504
    const-string v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_12

    .line 506
    :cond_f
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 510
    :goto_12
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 511
    const-string v0, "layout_height"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_24

    .line 513
    :cond_21
    const/4 v0, -0x2

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 515
    :goto_24
    return-void
.end method
