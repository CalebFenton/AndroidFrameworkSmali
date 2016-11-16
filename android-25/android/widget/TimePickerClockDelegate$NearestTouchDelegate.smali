.class Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NearestTouchDelegate"
.end annotation


# instance fields
.field private mInitialTouchTarget:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>()V

    #@3
    return-void
.end method

.method private findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 10
    .param p1, "v"    # Landroid/view/ViewGroup;
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    .line 867
    const/4 v0, 0x0

    #@1
    .line 868
    .local v0, "bestChild":Landroid/view/View;
    const v1, 0x7fffffff

    #@4
    .line 870
    .local v1, "bestDist":I
    const/4 v7, 0x0

    #@5
    .local v7, "i":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@8
    move-result v3

    #@9
    .end local v0    # "bestChild":Landroid/view/View;
    .local v3, "count":I
    :goto_0
    if-ge v7, v3, :cond_1

    #@b
    .line 871
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    .line 872
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@12
    move-result v8

    #@13
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@16
    move-result v9

    #@17
    div-int/lit8 v9, v9, 0x2

    #@19
    add-int/2addr v8, v9

    #@1a
    sub-int v4, p2, v8

    #@1c
    .line 873
    .local v4, "dX":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@1f
    move-result v8

    #@20
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    #@23
    move-result v9

    #@24
    div-int/lit8 v9, v9, 0x2

    #@26
    add-int/2addr v8, v9

    #@27
    sub-int v5, p3, v8

    #@29
    .line 874
    .local v5, "dY":I
    mul-int v8, v4, v4

    #@2b
    mul-int v9, v5, v5

    #@2d
    add-int v6, v8, v9

    #@2f
    .line 875
    .local v6, "dist":I
    if-le v1, v6, :cond_0

    #@31
    .line 876
    move-object v0, v2

    #@32
    .line 877
    .local v0, "bestChild":Landroid/view/View;
    move v1, v6

    #@33
    .line 870
    .end local v0    # "bestChild":Landroid/view/View;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@35
    goto :goto_0

    #@36
    .line 881
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "dX":I
    .end local v5    # "dY":I
    .end local v6    # "dist":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 837
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 838
    .local v0, "actionMasked":I
    if-nez v0, :cond_0

    #@8
    .line 839
    instance-of v5, p1, Landroid/view/ViewGroup;

    #@a
    if-eqz v5, :cond_1

    #@c
    move-object v5, p1

    #@d
    .line 840
    nop

    #@e
    nop

    #@f
    .line 841
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@12
    move-result v6

    #@13
    float-to-int v6, v6

    #@14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@17
    move-result v7

    #@18
    float-to-int v7, v7

    #@19
    .line 840
    invoke-direct {p0, v5, v6, v7}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;

    #@1c
    move-result-object v5

    #@1d
    iput-object v5, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    #@1f
    .line 847
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    #@21
    .line 848
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_2

    #@23
    .line 849
    return v9

    #@24
    .line 843
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    iput-object v8, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    #@26
    goto :goto_0

    #@27
    .line 852
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@2a
    move-result v5

    #@2b
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@2e
    move-result v6

    #@2f
    sub-int/2addr v5, v6

    #@30
    int-to-float v3, v5

    #@31
    .line 853
    .local v3, "offsetX":F
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@34
    move-result v5

    #@35
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@38
    move-result v6

    #@39
    sub-int/2addr v5, v6

    #@3a
    int-to-float v4, v5

    #@3b
    .line 854
    .local v4, "offsetY":F
    invoke-virtual {p2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@3e
    .line 855
    invoke-virtual {v1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@41
    move-result v2

    #@42
    .line 856
    .local v2, "handled":Z
    neg-float v5, v3

    #@43
    neg-float v6, v4

    #@44
    invoke-virtual {p2, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@47
    .line 858
    const/4 v5, 0x1

    #@48
    if-eq v0, v5, :cond_3

    #@4a
    .line 859
    const/4 v5, 0x3

    #@4b
    if-ne v0, v5, :cond_4

    #@4d
    .line 860
    :cond_3
    iput-object v8, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    #@4f
    .line 863
    :cond_4
    return v2
.end method
