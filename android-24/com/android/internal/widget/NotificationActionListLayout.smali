.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/view/ViewGroup;
.source "NotificationActionListLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;
    }
.end annotation


# static fields
.field public static final MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mMeasureOrderOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureOrderTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTotalWidth:I


# direct methods
.method static synthetic -com_android_internal_widget_NotificationActionListLayout_lambda$1(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2
    .param p0, "a"    # Landroid/util/Pair;
    .param p1, "b"    # Landroid/util/Pair;

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2
    check-cast v0, Ljava/lang/Integer;

    #@4
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@6
    check-cast v1, Ljava/lang/Integer;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 267
    new-instance v0, Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;

    #@2
    invoke-direct {v0}, Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;-><init>()V

    #@5
    .line 266
    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 38
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    #@6
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@d
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@14
    .line 42
    return-void
.end method

.method private clearMeasureOrder()V
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 170
    return-void
.end method

.method private rebuildMeasureOrder(II)V
    .locals 5
    .param p1, "capacityText"    # I
    .param p2, "capacityOther"    # I

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    #@3
    .line 155
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@8
    .line 156
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@d
    .line 157
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    #@10
    move-result v1

    #@11
    .line 158
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@14
    .line 159
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v0

    #@18
    .line 160
    .local v0, "c":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/TextView;

    #@1a
    if-eqz v3, :cond_0

    #@1c
    move-object v3, v0

    #@1d
    check-cast v3, Landroid/widget/TextView;

    #@1f
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@22
    move-result-object v3

    #@23
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    #@26
    move-result v3

    #@27
    if-lez v3, :cond_0

    #@29
    .line 161
    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@2b
    move-object v3, v0

    #@2c
    check-cast v3, Landroid/widget/TextView;

    #@2e
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@31
    move-result-object v3

    #@32
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    #@35
    move-result v3

    #@36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v3

    #@3a
    .line 162
    check-cast v0, Landroid/widget/TextView;

    #@3c
    .line 161
    .end local v0    # "c":Landroid/view/View;
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    .line 158
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0

    #@46
    .line 164
    .restart local v0    # "c":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_1

    #@4c
    .line 167
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@4e
    sget-object v4, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    #@50
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    #@53
    .line 153
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 263
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    #@0
    .prologue
    .line 250
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    const/4 v1, -0x2

    #@3
    const/4 v2, -0x1

    #@4
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 245
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 255
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 256
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@8
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@b
    return-object v0

    #@c
    .line 258
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isLayoutRtl()Z

    #@3
    move-result v13

    #@4
    .line 190
    .local v13, "isLayoutRtl":Z
    move-object/from16 v0, p0

    #@6
    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingTop:I

    #@8
    move/from16 v16, v0

    #@a
    .line 196
    .local v16, "paddingTop":I
    sub-int v10, p5, p3

    #@c
    .line 199
    .local v10, "height":I
    sub-int v18, v10, v16

    #@e
    move-object/from16 v0, p0

    #@10
    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingBottom:I

    #@12
    move/from16 v19, v0

    #@14
    sub-int v12, v18, v19

    #@16
    .line 201
    .local v12, "innerHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    #@19
    move-result v8

    #@1a
    .line 203
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutDirection()I

    #@1d
    move-result v14

    #@1e
    .line 204
    .local v14, "layoutDirection":I
    const v18, 0x800003

    #@21
    move/from16 v0, v18

    #@23
    invoke-static {v0, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@26
    move-result v18

    #@27
    packed-switch v18, :pswitch_data_0

    #@2a
    .line 212
    move-object/from16 v0, p0

    #@2c
    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    #@2e
    .line 216
    .local v5, "childLeft":I
    :goto_0
    const/16 v17, 0x0

    #@30
    .line 217
    .local v17, "start":I
    const/4 v9, 0x1

    #@31
    .line 219
    .local v9, "dir":I
    if-eqz v13, :cond_0

    #@33
    .line 220
    add-int/lit8 v17, v8, -0x1

    #@35
    .line 221
    const/4 v9, -0x1

    #@36
    .line 224
    :cond_0
    const/4 v11, 0x0

    #@37
    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_2

    #@39
    .line 225
    mul-int v18, v9, v11

    #@3b
    add-int v4, v17, v18

    #@3d
    .line 226
    .local v4, "childIndex":I
    move-object/from16 v0, p0

    #@3f
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    #@42
    move-result-object v2

    #@43
    .line 227
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@46
    move-result v18

    #@47
    const/16 v19, 0x8

    #@49
    move/from16 v0, v18

    #@4b
    move/from16 v1, v19

    #@4d
    if-eq v0, v1, :cond_1

    #@4f
    .line 228
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@52
    move-result v7

    #@53
    .line 229
    .local v7, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@56
    move-result v3

    #@57
    .line 231
    .local v3, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5a
    move-result-object v15

    #@5b
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    #@5d
    .line 233
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    sub-int v18, v12, v3

    #@5f
    div-int/lit8 v18, v18, 0x2

    #@61
    add-int v18, v18, v16

    #@63
    .line 234
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@65
    move/from16 v19, v0

    #@67
    .line 233
    add-int v18, v18, v19

    #@69
    .line 234
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@6b
    move/from16 v19, v0

    #@6d
    .line 233
    sub-int v6, v18, v19

    #@6f
    .line 236
    .local v6, "childTop":I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@71
    move/from16 v18, v0

    #@73
    add-int v5, v5, v18

    #@75
    .line 237
    add-int v18, v5, v7

    #@77
    add-int v19, v6, v3

    #@79
    move/from16 v0, v18

    #@7b
    move/from16 v1, v19

    #@7d
    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@80
    .line 238
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@82
    move/from16 v18, v0

    #@84
    add-int v18, v18, v7

    #@86
    add-int v5, v5, v18

    #@88
    .line 224
    .end local v3    # "childHeight":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@8a
    goto :goto_1

    #@8b
    .line 207
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childIndex":I
    .end local v5    # "childLeft":I
    .end local v9    # "dir":I
    .end local v11    # "i":I
    .end local v17    # "start":I
    :pswitch_0
    move-object/from16 v0, p0

    #@8d
    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    #@8f
    move/from16 v18, v0

    #@91
    add-int v18, v18, p4

    #@93
    sub-int v18, v18, p2

    #@95
    move-object/from16 v0, p0

    #@97
    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    #@99
    move/from16 v19, v0

    #@9b
    sub-int v5, v18, v19

    #@9d
    .line 208
    .restart local v5    # "childLeft":I
    goto :goto_0

    #@9e
    .line 188
    .restart local v9    # "dir":I
    .restart local v11    # "i":I
    .restart local v17    # "start":I
    :cond_2
    return-void

    #@9f
    .line 204
    nop

    #@a0
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    #@3
    move-result v13

    #@4
    .line 49
    .local v13, "N":I
    const/16 v29, 0x0

    #@6
    .line 50
    .local v29, "textViews":I
    const/16 v26, 0x0

    #@8
    .line 51
    .local v26, "otherViews":I
    const/16 v23, 0x0

    #@a
    .line 53
    .local v23, "notGoneChildren":I
    const/16 v18, 0x0

    #@c
    .line 54
    .local v18, "lastNotGoneChild":Landroid/view/View;
    const/16 v16, 0x0

    #@e
    .end local v18    # "lastNotGoneChild":Landroid/view/View;
    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    #@10
    if-ge v0, v13, :cond_2

    #@12
    .line 55
    move-object/from16 v0, p0

    #@14
    move/from16 v1, v16

    #@16
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v4

    #@1a
    .line 56
    .local v4, "c":Landroid/view/View;
    instance-of v3, v4, Landroid/widget/TextView;

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 57
    add-int/lit8 v29, v29, 0x1

    #@20
    .line 61
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@23
    move-result v3

    #@24
    const/16 v5, 0x8

    #@26
    if-eq v3, v5, :cond_0

    #@28
    .line 62
    add-int/lit8 v23, v23, 0x1

    #@2a
    .line 63
    move-object/from16 v18, v4

    #@2c
    .line 54
    :cond_0
    add-int/lit8 v16, v16, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 59
    :cond_1
    add-int/lit8 v26, v26, 0x1

    #@31
    goto :goto_1

    #@32
    .line 69
    .end local v4    # "c":Landroid/view/View;
    :cond_2
    const/16 v22, 0x0

    #@34
    .line 70
    .local v22, "needRebuild":Z
    move-object/from16 v0, p0

    #@36
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v3

    #@3c
    move/from16 v0, v29

    #@3e
    if-ne v0, v3, :cond_3

    #@40
    .line 71
    move-object/from16 v0, p0

    #@42
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@47
    move-result v3

    #@48
    move/from16 v0, v26

    #@4a
    if-eq v0, v3, :cond_4

    #@4c
    .line 72
    :cond_3
    const/16 v22, 0x1

    #@4e
    .line 74
    :cond_4
    if-nez v22, :cond_6

    #@50
    .line 75
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@57
    move-result v28

    #@58
    .line 76
    .local v28, "size":I
    const/16 v16, 0x0

    #@5a
    :goto_2
    move/from16 v0, v16

    #@5c
    move/from16 v1, v28

    #@5e
    if-ge v0, v1, :cond_6

    #@60
    .line 77
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@64
    move/from16 v0, v16

    #@66
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v27

    #@6a
    check-cast v27, Landroid/util/Pair;

    #@6c
    .line 78
    .local v27, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    move-object/from16 v0, v27

    #@6e
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@70
    check-cast v3, Ljava/lang/Integer;

    #@72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@75
    move-result v5

    #@76
    move-object/from16 v0, v27

    #@78
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@7a
    check-cast v3, Landroid/widget/TextView;

    #@7c
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@7f
    move-result-object v3

    #@80
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    #@83
    move-result v3

    #@84
    if-eq v5, v3, :cond_5

    #@86
    .line 79
    const/16 v22, 0x1

    #@88
    .line 76
    :cond_5
    add-int/lit8 v16, v16, 0x1

    #@8a
    goto :goto_2

    #@8b
    .line 83
    .end local v27    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    .end local v28    # "size":I
    :cond_6
    const/4 v3, 0x1

    #@8c
    move/from16 v0, v23

    #@8e
    if-le v0, v3, :cond_7

    #@90
    if-eqz v22, :cond_7

    #@92
    .line 84
    move-object/from16 v0, p0

    #@94
    move/from16 v1, v29

    #@96
    move/from16 v2, v26

    #@98
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    #@9b
    .line 88
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@9e
    move-result v3

    #@9f
    if-eqz v3, :cond_8

    #@a1
    const/4 v15, 0x1

    #@a2
    .line 90
    .local v15, "constrained":Z
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@a5
    move-result v3

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    #@aa
    sub-int/2addr v3, v5

    #@ab
    move-object/from16 v0, p0

    #@ad
    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    #@af
    sub-int v17, v3, v5

    #@b1
    .line 91
    .local v17, "innerWidth":I
    move-object/from16 v0, p0

    #@b3
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@b5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b8
    move-result v25

    #@b9
    .line 92
    .local v25, "otherSize":I
    const/4 v10, 0x0

    #@ba
    .line 95
    .local v10, "usedWidth":I
    const/16 v21, 0x0

    #@bc
    .line 96
    .local v21, "measuredChildren":I
    const/16 v16, 0x0

    #@be
    :goto_4
    move/from16 v0, v16

    #@c0
    if-ge v0, v13, :cond_c

    #@c2
    const/4 v3, 0x1

    #@c3
    move/from16 v0, v23

    #@c5
    if-le v0, v3, :cond_c

    #@c7
    .line 100
    move/from16 v0, v16

    #@c9
    move/from16 v1, v25

    #@cb
    if-ge v0, v1, :cond_9

    #@cd
    .line 101
    move-object/from16 v0, p0

    #@cf
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@d1
    move/from16 v0, v16

    #@d3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d6
    move-result-object v4

    #@d7
    check-cast v4, Landroid/view/View;

    #@d9
    .line 105
    .restart local v4    # "c":Landroid/view/View;
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@dc
    move-result v3

    #@dd
    const/16 v5, 0x8

    #@df
    if-ne v3, v5, :cond_a

    #@e1
    .line 96
    :goto_6
    add-int/lit8 v16, v16, 0x1

    #@e3
    goto :goto_4

    #@e4
    .line 88
    .end local v4    # "c":Landroid/view/View;
    .end local v10    # "usedWidth":I
    .end local v15    # "constrained":Z
    .end local v17    # "innerWidth":I
    .end local v21    # "measuredChildren":I
    .end local v25    # "otherSize":I
    :cond_8
    const/4 v15, 0x0

    #@e5
    .restart local v15    # "constrained":Z
    goto :goto_3

    #@e6
    .line 103
    .restart local v10    # "usedWidth":I
    .restart local v17    # "innerWidth":I
    .restart local v21    # "measuredChildren":I
    .restart local v25    # "otherSize":I
    :cond_9
    move-object/from16 v0, p0

    #@e8
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@ea
    sub-int v5, v16, v25

    #@ec
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ef
    move-result-object v3

    #@f0
    check-cast v3, Landroid/util/Pair;

    #@f2
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@f4
    check-cast v4, Landroid/view/View;

    #@f6
    .restart local v4    # "c":Landroid/view/View;
    goto :goto_5

    #@f7
    .line 108
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@fa
    move-result-object v19

    #@fb
    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    #@fd
    .line 110
    .local v19, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v6, v10

    #@fe
    .line 111
    .local v6, "usedWidthForChild":I
    if-eqz v15, :cond_b

    #@100
    .line 116
    sub-int v14, v17, v10

    #@102
    .line 117
    .local v14, "availableWidth":I
    sub-int v3, v23, v21

    #@104
    div-int v20, v14, v3

    #@106
    .line 119
    .local v20, "maxWidthForChild":I
    sub-int v6, v17, v20

    #@108
    .line 123
    .end local v14    # "availableWidth":I
    .end local v20    # "maxWidthForChild":I
    :cond_b
    const/4 v8, 0x0

    #@109
    move-object/from16 v3, p0

    #@10b
    move/from16 v5, p1

    #@10d
    move/from16 v7, p2

    #@10f
    .line 122
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@112
    .line 125
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@115
    move-result v3

    #@116
    move-object/from16 v0, v19

    #@118
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@11a
    add-int/2addr v3, v5

    #@11b
    move-object/from16 v0, v19

    #@11d
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@11f
    add-int/2addr v3, v5

    #@120
    add-int/2addr v10, v3

    #@121
    .line 126
    add-int/lit8 v21, v21, 0x1

    #@123
    goto :goto_6

    #@124
    .line 131
    .end local v4    # "c":Landroid/view/View;
    .end local v6    # "usedWidthForChild":I
    .end local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_c
    if-eqz v18, :cond_e

    #@126
    if-eqz v15, :cond_f

    #@128
    move/from16 v0, v17

    #@12a
    if-ge v10, v0, :cond_f

    #@12c
    .line 133
    :goto_7
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@12f
    move-result-object v19

    #@130
    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    #@132
    .line 134
    .restart local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v3, 0x1

    #@133
    move/from16 v0, v23

    #@135
    if-le v0, v3, :cond_d

    #@137
    .line 136
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    #@13a
    move-result v3

    #@13b
    move-object/from16 v0, v19

    #@13d
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@13f
    add-int/2addr v3, v5

    #@140
    move-object/from16 v0, v19

    #@142
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@144
    add-int/2addr v3, v5

    #@145
    sub-int/2addr v10, v3

    #@146
    .line 139
    :cond_d
    move-object/from16 v0, v19

    #@148
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@14a
    move/from16 v24, v0

    #@14c
    .line 140
    .local v24, "originalWidth":I
    const/4 v3, -0x1

    #@14d
    move-object/from16 v0, v19

    #@14f
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@151
    .line 142
    const/4 v12, 0x0

    #@152
    move-object/from16 v7, p0

    #@154
    move-object/from16 v8, v18

    #@156
    move/from16 v9, p1

    #@158
    move/from16 v11, p2

    #@15a
    .line 141
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@15d
    .line 143
    move/from16 v0, v24

    #@15f
    move-object/from16 v1, v19

    #@161
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@163
    .line 145
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    #@166
    move-result v3

    #@167
    move-object/from16 v0, v19

    #@169
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@16b
    add-int/2addr v3, v5

    #@16c
    move-object/from16 v0, v19

    #@16e
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@170
    add-int/2addr v3, v5

    #@171
    add-int/2addr v10, v3

    #@172
    .line 148
    .end local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v24    # "originalWidth":I
    :cond_e
    move-object/from16 v0, p0

    #@174
    iget v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    #@176
    add-int/2addr v3, v10

    #@177
    move-object/from16 v0, p0

    #@179
    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    #@17b
    add-int/2addr v3, v5

    #@17c
    move-object/from16 v0, p0

    #@17e
    iput v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    #@180
    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumWidth()I

    #@183
    move-result v3

    #@184
    move/from16 v0, p1

    #@186
    invoke-static {v3, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    #@189
    move-result v3

    #@18a
    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumHeight()I

    #@18d
    move-result v5

    #@18e
    move/from16 v0, p2

    #@190
    invoke-static {v5, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    #@193
    move-result v5

    #@194
    .line 149
    move-object/from16 v0, p0

    #@196
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/widget/NotificationActionListLayout;->setMeasuredDimension(II)V

    #@199
    .line 47
    return-void

    #@19a
    .line 132
    :cond_f
    const/4 v3, 0x1

    #@19b
    move/from16 v0, v23

    #@19d
    if-ne v0, v3, :cond_e

    #@19f
    goto :goto_7
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    #@3
    .line 178
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    #@6
    .line 176
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    #@3
    .line 184
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    #@6
    .line 182
    return-void
.end method
