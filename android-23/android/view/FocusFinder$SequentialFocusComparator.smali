.class final Landroid/view/FocusFinder$SequentialFocusComparator;
.super Ljava/lang/Object;
.source "FocusFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SequentialFocusComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFirstRect:Landroid/graphics/Rect;

.field private mIsLayoutRtl:Z

.field private mRoot:Landroid/view/ViewGroup;

.field private final mSecondRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 606
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@a
    .line 607
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@11
    .line 605
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$SequentialFocusComparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>()V

    #@3
    return-void
.end method

.method private getRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 656
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@3
    .line 657
    iget-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@8
    .line 655
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v1, -0x1

    #@3
    .line 624
    if-ne p1, p2, :cond_0

    #@5
    .line 625
    return v4

    #@6
    .line 628
    :cond_0
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@8
    invoke-direct {p0, p1, v2}, Landroid/view/FocusFinder$SequentialFocusComparator;->getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 629
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@d
    invoke-direct {p0, p2, v2}, Landroid/view/FocusFinder$SequentialFocusComparator;->getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    #@10
    .line 631
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@12
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@14
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@16
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@18
    if-ge v2, v3, :cond_1

    #@1a
    .line 632
    return v1

    #@1b
    .line 633
    :cond_1
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@1d
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@1f
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@21
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@23
    if-le v2, v3, :cond_2

    #@25
    .line 634
    return v0

    #@26
    .line 635
    :cond_2
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@28
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@2a
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@2c
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@2e
    if-ge v2, v3, :cond_4

    #@30
    .line 636
    iget-boolean v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    #@32
    if-eqz v2, :cond_3

    #@34
    :goto_0
    return v0

    #@35
    :cond_3
    move v0, v1

    #@36
    goto :goto_0

    #@37
    .line 637
    :cond_4
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@39
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@3b
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@3d
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@3f
    if-le v2, v3, :cond_6

    #@41
    .line 638
    iget-boolean v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    #@43
    if-eqz v2, :cond_5

    #@45
    :goto_1
    return v1

    #@46
    :cond_5
    move v1, v0

    #@47
    goto :goto_1

    #@48
    .line 639
    :cond_6
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@4a
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@4c
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@4e
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@50
    if-ge v2, v3, :cond_7

    #@52
    .line 640
    return v1

    #@53
    .line 641
    :cond_7
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@55
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@57
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@59
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@5b
    if-le v2, v3, :cond_8

    #@5d
    .line 642
    return v0

    #@5e
    .line 643
    :cond_8
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@60
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@62
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@64
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@66
    if-ge v2, v3, :cond_a

    #@68
    .line 644
    iget-boolean v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    #@6a
    if-eqz v2, :cond_9

    #@6c
    :goto_2
    return v0

    #@6d
    :cond_9
    move v0, v1

    #@6e
    goto :goto_2

    #@6f
    .line 645
    :cond_a
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@71
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@73
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@75
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@77
    if-le v2, v3, :cond_c

    #@79
    .line 646
    iget-boolean v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    #@7b
    if-eqz v2, :cond_b

    #@7d
    :goto_3
    return v1

    #@7e
    :cond_b
    move v1, v0

    #@7f
    goto :goto_3

    #@80
    .line 651
    :cond_c
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "first"    # Ljava/lang/Object;
    .param p2, "second"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 623
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "first":Ljava/lang/Object;
    check-cast p2, Landroid/view/View;

    #@4
    .end local p2    # "second":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/view/FocusFinder$SequentialFocusComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 612
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    #@3
    .line 611
    return-void
.end method

.method public setIsLayoutRtl(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 620
    iput-boolean p1, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    #@2
    .line 619
    return-void
.end method

.method public setRoot(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "root"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 616
    iput-object p1, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    #@2
    .line 615
    return-void
.end method
