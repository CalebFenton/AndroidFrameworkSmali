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
.field private static final LOCATION:I = 0x0

.field private static final LOCATION_NEXT:I = 0x1


# instance fields
.field public column:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mOffset:[I

.field public span:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/widget/TableRow$LayoutParams;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 464
    const/4 v0, -0x2

    #@2
    invoke-direct {p0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@5
    .line 412
    const/4 v0, 0x2

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    #@a
    .line 465
    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    #@c
    .line 466
    const/4 v0, 0x1

    #@d
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    #@f
    .line 463
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "column"    # I

    #@0
    .prologue
    .line 479
    invoke-direct {p0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    #@3
    .line 480
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    #@5
    .line 478
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@3
    .line 412
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    #@8
    .line 441
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    #@b
    .line 442
    const/4 v0, 0x1

    #@c
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    #@e
    .line 439
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "initWeight"    # F

    #@0
    .prologue
    .line 453
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@3
    .line 412
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    #@8
    .line 454
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    #@b
    .line 455
    const/4 v0, 0x1

    #@c
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    #@e
    .line 452
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 418
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 412
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [I

    #@7
    iput-object v1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    #@9
    .line 422
    sget-object v1, Lcom/android/internal/R$styleable;->TableRow_Cell:[I

    #@b
    .line 421
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@e
    move-result-object v0

    #@f
    .line 424
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@10
    const/4 v2, -0x1

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    #@17
    .line 425
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1a
    move-result v1

    #@1b
    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    #@1d
    .line 426
    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    #@1f
    if-gt v1, v3, :cond_0

    #@21
    .line 427
    iput v3, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    #@23
    .line 430
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@26
    .line 417
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 487
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 412
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    #@8
    .line 486
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    #@0
    .prologue
    .line 494
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 412
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    #@8
    .line 493
    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 517
    invoke-super {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 518
    const-string/jumbo v0, "layout:column"

    #@6
    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@b
    .line 519
    const-string/jumbo v0, "layout:span"

    #@e
    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@13
    .line 516
    return-void
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    #@0
    .prologue
    .line 500
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 501
    const-string/jumbo v0, "layout_width"

    #@9
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->width:I

    #@f
    .line 507
    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 508
    const-string/jumbo v0, "layout_height"

    #@18
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->height:I

    #@1e
    .line 498
    :goto_1
    return-void

    #@1f
    .line 503
    :cond_0
    const/4 v0, -0x1

    #@20
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->width:I

    #@22
    goto :goto_0

    #@23
    .line 510
    :cond_1
    const/4 v0, -0x2

    #@24
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->height:I

    #@26
    goto :goto_1
.end method
