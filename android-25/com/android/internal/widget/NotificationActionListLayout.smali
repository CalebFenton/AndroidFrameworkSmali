.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/widget/LinearLayout;
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
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mDefaultPaddingEnd:I

.field private mMeasureLinearly:Z

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
    .line 278
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
    .line 278
    new-instance v0, Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;

    #@2
    invoke-direct {v0}, Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;-><init>()V

    #@5
    .line 277
    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    #@7
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 40
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    #@6
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@d
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@14
    .line 47
    return-void
.end method

.method private clearMeasureOrder()V
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 179
    return-void
.end method

.method private rebuildMeasureOrder(II)V
    .locals 5
    .param p1, "capacityText"    # I
    .param p2, "capacityOther"    # I

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    #@3
    .line 164
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@8
    .line 165
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@d
    .line 166
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    #@10
    move-result v1

    #@11
    .line 167
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@14
    .line 168
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v0

    #@18
    .line 169
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
    .line 170
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
    .line 171
    check-cast v0, Landroid/widget/TextView;

    #@3c
    .line 170
    .end local v0    # "c":Landroid/view/View;
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    .line 167
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0

    #@46
    .line 173
    .restart local v0    # "c":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_1

    #@4c
    .line 176
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@4e
    sget-object v4, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    #@50
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    #@53
    .line 162
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    #@0
    .prologue
    .line 258
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    #@3
    .line 259
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingEnd:I

    #@9
    .line 260
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    #@f
    .line 257
    return-void
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
    .line 198
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    #@4
    move/from16 v18, v0

    #@6
    if-eqz v18, :cond_0

    #@8
    .line 199
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    #@b
    .line 200
    return-void

    #@c
    .line 202
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isLayoutRtl()Z

    #@f
    move-result v13

    #@10
    .line 203
    .local v13, "isLayoutRtl":Z
    move-object/from16 v0, p0

    #@12
    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingTop:I

    #@14
    move/from16 v16, v0

    #@16
    .line 209
    .local v16, "paddingTop":I
    sub-int v10, p5, p3

    #@18
    .line 212
    .local v10, "height":I
    sub-int v18, v10, v16

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingBottom:I

    #@1e
    move/from16 v19, v0

    #@20
    sub-int v12, v18, v19

    #@22
    .line 214
    .local v12, "innerHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    #@25
    move-result v8

    #@26
    .line 216
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutDirection()I

    #@29
    move-result v14

    #@2a
    .line 217
    .local v14, "layoutDirection":I
    const v18, 0x800003

    #@2d
    move/from16 v0, v18

    #@2f
    invoke-static {v0, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@32
    move-result v18

    #@33
    packed-switch v18, :pswitch_data_0

    #@36
    .line 225
    move-object/from16 v0, p0

    #@38
    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    #@3a
    .line 229
    .local v5, "childLeft":I
    :goto_0
    const/16 v17, 0x0

    #@3c
    .line 230
    .local v17, "start":I
    const/4 v9, 0x1

    #@3d
    .line 232
    .local v9, "dir":I
    if-eqz v13, :cond_1

    #@3f
    .line 233
    add-int/lit8 v17, v8, -0x1

    #@41
    .line 234
    const/4 v9, -0x1

    #@42
    .line 237
    :cond_1
    const/4 v11, 0x0

    #@43
    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_3

    #@45
    .line 238
    mul-int v18, v9, v11

    #@47
    add-int v4, v17, v18

    #@49
    .line 239
    .local v4, "childIndex":I
    move-object/from16 v0, p0

    #@4b
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    #@4e
    move-result-object v2

    #@4f
    .line 240
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@52
    move-result v18

    #@53
    const/16 v19, 0x8

    #@55
    move/from16 v0, v18

    #@57
    move/from16 v1, v19

    #@59
    if-eq v0, v1, :cond_2

    #@5b
    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@5e
    move-result v7

    #@5f
    .line 242
    .local v7, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@62
    move-result v3

    #@63
    .line 244
    .local v3, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@66
    move-result-object v15

    #@67
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    #@69
    .line 246
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    sub-int v18, v12, v3

    #@6b
    div-int/lit8 v18, v18, 0x2

    #@6d
    add-int v18, v18, v16

    #@6f
    .line 247
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@71
    move/from16 v19, v0

    #@73
    .line 246
    add-int v18, v18, v19

    #@75
    .line 247
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@77
    move/from16 v19, v0

    #@79
    .line 246
    sub-int v6, v18, v19

    #@7b
    .line 249
    .local v6, "childTop":I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@7d
    move/from16 v18, v0

    #@7f
    add-int v5, v5, v18

    #@81
    .line 250
    add-int v18, v5, v7

    #@83
    add-int v19, v6, v3

    #@85
    move/from16 v0, v18

    #@87
    move/from16 v1, v19

    #@89
    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@8c
    .line 251
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@8e
    move/from16 v18, v0

    #@90
    add-int v18, v18, v7

    #@92
    add-int v5, v5, v18

    #@94
    .line 237
    .end local v3    # "childHeight":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    #@96
    goto :goto_1

    #@97
    .line 220
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childIndex":I
    .end local v5    # "childLeft":I
    .end local v9    # "dir":I
    .end local v11    # "i":I
    .end local v17    # "start":I
    :pswitch_0
    move-object/from16 v0, p0

    #@99
    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    #@9b
    move/from16 v18, v0

    #@9d
    add-int v18, v18, p4

    #@9f
    sub-int v18, v18, p2

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    #@a5
    move/from16 v19, v0

    #@a7
    sub-int v5, v18, v19

    #@a9
    .line 221
    .restart local v5    # "childLeft":I
    goto :goto_0

    #@aa
    .line 197
    .restart local v9    # "dir":I
    .restart local v11    # "i":I
    .restart local v17    # "start":I
    :cond_3
    return-void

    #@ab
    .line 217
    nop

    #@ac
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
    .line 53
    move-object/from16 v0, p0

    #@2
    iget-boolean v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 54
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@9
    .line 55
    return-void

    #@a
    .line 57
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    #@d
    move-result v13

    #@e
    .line 58
    .local v13, "N":I
    const/16 v29, 0x0

    #@10
    .line 59
    .local v29, "textViews":I
    const/16 v26, 0x0

    #@12
    .line 60
    .local v26, "otherViews":I
    const/16 v23, 0x0

    #@14
    .line 62
    .local v23, "notGoneChildren":I
    const/16 v18, 0x0

    #@16
    .line 63
    .local v18, "lastNotGoneChild":Landroid/view/View;
    const/16 v16, 0x0

    #@18
    .end local v18    # "lastNotGoneChild":Landroid/view/View;
    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    #@1a
    if-ge v0, v13, :cond_3

    #@1c
    .line 64
    move-object/from16 v0, p0

    #@1e
    move/from16 v1, v16

    #@20
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    #@23
    move-result-object v4

    #@24
    .line 65
    .local v4, "c":Landroid/view/View;
    instance-of v3, v4, Landroid/widget/TextView;

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 66
    add-int/lit8 v29, v29, 0x1

    #@2a
    .line 70
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@2d
    move-result v3

    #@2e
    const/16 v5, 0x8

    #@30
    if-eq v3, v5, :cond_1

    #@32
    .line 71
    add-int/lit8 v23, v23, 0x1

    #@34
    .line 72
    move-object/from16 v18, v4

    #@36
    .line 63
    :cond_1
    add-int/lit8 v16, v16, 0x1

    #@38
    goto :goto_0

    #@39
    .line 68
    :cond_2
    add-int/lit8 v26, v26, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 78
    .end local v4    # "c":Landroid/view/View;
    :cond_3
    const/16 v22, 0x0

    #@3e
    .line 79
    .local v22, "needRebuild":Z
    move-object/from16 v0, p0

    #@40
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v3

    #@46
    move/from16 v0, v29

    #@48
    if-ne v0, v3, :cond_4

    #@4a
    .line 80
    move-object/from16 v0, p0

    #@4c
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@51
    move-result v3

    #@52
    move/from16 v0, v26

    #@54
    if-eq v0, v3, :cond_5

    #@56
    .line 81
    :cond_4
    const/16 v22, 0x1

    #@58
    .line 83
    :cond_5
    if-nez v22, :cond_7

    #@5a
    .line 84
    move-object/from16 v0, p0

    #@5c
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v28

    #@62
    .line 85
    .local v28, "size":I
    const/16 v16, 0x0

    #@64
    :goto_2
    move/from16 v0, v16

    #@66
    move/from16 v1, v28

    #@68
    if-ge v0, v1, :cond_7

    #@6a
    .line 86
    move-object/from16 v0, p0

    #@6c
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@6e
    move/from16 v0, v16

    #@70
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@73
    move-result-object v27

    #@74
    check-cast v27, Landroid/util/Pair;

    #@76
    .line 87
    .local v27, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    move-object/from16 v0, v27

    #@78
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@7a
    check-cast v3, Ljava/lang/Integer;

    #@7c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@7f
    move-result v5

    #@80
    move-object/from16 v0, v27

    #@82
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@84
    check-cast v3, Landroid/widget/TextView;

    #@86
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@89
    move-result-object v3

    #@8a
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    #@8d
    move-result v3

    #@8e
    if-eq v5, v3, :cond_6

    #@90
    .line 88
    const/16 v22, 0x1

    #@92
    .line 85
    :cond_6
    add-int/lit8 v16, v16, 0x1

    #@94
    goto :goto_2

    #@95
    .line 92
    .end local v27    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    .end local v28    # "size":I
    :cond_7
    const/4 v3, 0x1

    #@96
    move/from16 v0, v23

    #@98
    if-le v0, v3, :cond_8

    #@9a
    if-eqz v22, :cond_8

    #@9c
    .line 93
    move-object/from16 v0, p0

    #@9e
    move/from16 v1, v29

    #@a0
    move/from16 v2, v26

    #@a2
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    #@a5
    .line 97
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@a8
    move-result v3

    #@a9
    if-eqz v3, :cond_9

    #@ab
    const/4 v15, 0x1

    #@ac
    .line 99
    .local v15, "constrained":Z
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@af
    move-result v3

    #@b0
    move-object/from16 v0, p0

    #@b2
    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    #@b4
    sub-int/2addr v3, v5

    #@b5
    move-object/from16 v0, p0

    #@b7
    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    #@b9
    sub-int v17, v3, v5

    #@bb
    .line 100
    .local v17, "innerWidth":I
    move-object/from16 v0, p0

    #@bd
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@bf
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c2
    move-result v25

    #@c3
    .line 101
    .local v25, "otherSize":I
    const/4 v10, 0x0

    #@c4
    .line 104
    .local v10, "usedWidth":I
    const/16 v21, 0x0

    #@c6
    .line 105
    .local v21, "measuredChildren":I
    const/16 v16, 0x0

    #@c8
    :goto_4
    move/from16 v0, v16

    #@ca
    if-ge v0, v13, :cond_d

    #@cc
    const/4 v3, 0x1

    #@cd
    move/from16 v0, v23

    #@cf
    if-le v0, v3, :cond_d

    #@d1
    .line 109
    move/from16 v0, v16

    #@d3
    move/from16 v1, v25

    #@d5
    if-ge v0, v1, :cond_a

    #@d7
    .line 110
    move-object/from16 v0, p0

    #@d9
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    #@db
    move/from16 v0, v16

    #@dd
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e0
    move-result-object v4

    #@e1
    check-cast v4, Landroid/view/View;

    #@e3
    .line 114
    .restart local v4    # "c":Landroid/view/View;
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@e6
    move-result v3

    #@e7
    const/16 v5, 0x8

    #@e9
    if-ne v3, v5, :cond_b

    #@eb
    .line 105
    :goto_6
    add-int/lit8 v16, v16, 0x1

    #@ed
    goto :goto_4

    #@ee
    .line 97
    .end local v4    # "c":Landroid/view/View;
    .end local v10    # "usedWidth":I
    .end local v15    # "constrained":Z
    .end local v17    # "innerWidth":I
    .end local v21    # "measuredChildren":I
    .end local v25    # "otherSize":I
    :cond_9
    const/4 v15, 0x0

    #@ef
    .restart local v15    # "constrained":Z
    goto :goto_3

    #@f0
    .line 112
    .restart local v10    # "usedWidth":I
    .restart local v17    # "innerWidth":I
    .restart local v21    # "measuredChildren":I
    .restart local v25    # "otherSize":I
    :cond_a
    move-object/from16 v0, p0

    #@f2
    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    #@f4
    sub-int v5, v16, v25

    #@f6
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f9
    move-result-object v3

    #@fa
    check-cast v3, Landroid/util/Pair;

    #@fc
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@fe
    check-cast v4, Landroid/view/View;

    #@100
    .restart local v4    # "c":Landroid/view/View;
    goto :goto_5

    #@101
    .line 117
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@104
    move-result-object v19

    #@105
    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    #@107
    .line 119
    .local v19, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v6, v10

    #@108
    .line 120
    .local v6, "usedWidthForChild":I
    if-eqz v15, :cond_c

    #@10a
    .line 125
    sub-int v14, v17, v10

    #@10c
    .line 126
    .local v14, "availableWidth":I
    sub-int v3, v23, v21

    #@10e
    div-int v20, v14, v3

    #@110
    .line 128
    .local v20, "maxWidthForChild":I
    sub-int v6, v17, v20

    #@112
    .line 132
    .end local v14    # "availableWidth":I
    .end local v20    # "maxWidthForChild":I
    :cond_c
    const/4 v8, 0x0

    #@113
    move-object/from16 v3, p0

    #@115
    move/from16 v5, p1

    #@117
    move/from16 v7, p2

    #@119
    .line 131
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@11c
    .line 134
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@11f
    move-result v3

    #@120
    move-object/from16 v0, v19

    #@122
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@124
    add-int/2addr v3, v5

    #@125
    move-object/from16 v0, v19

    #@127
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@129
    add-int/2addr v3, v5

    #@12a
    add-int/2addr v10, v3

    #@12b
    .line 135
    add-int/lit8 v21, v21, 0x1

    #@12d
    goto :goto_6

    #@12e
    .line 140
    .end local v4    # "c":Landroid/view/View;
    .end local v6    # "usedWidthForChild":I
    .end local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_d
    if-eqz v18, :cond_f

    #@130
    if-eqz v15, :cond_10

    #@132
    move/from16 v0, v17

    #@134
    if-ge v10, v0, :cond_10

    #@136
    .line 142
    :goto_7
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@139
    move-result-object v19

    #@13a
    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    #@13c
    .line 143
    .restart local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v3, 0x1

    #@13d
    move/from16 v0, v23

    #@13f
    if-le v0, v3, :cond_e

    #@141
    .line 145
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    #@144
    move-result v3

    #@145
    move-object/from16 v0, v19

    #@147
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@149
    add-int/2addr v3, v5

    #@14a
    move-object/from16 v0, v19

    #@14c
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@14e
    add-int/2addr v3, v5

    #@14f
    sub-int/2addr v10, v3

    #@150
    .line 148
    :cond_e
    move-object/from16 v0, v19

    #@152
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@154
    move/from16 v24, v0

    #@156
    .line 149
    .local v24, "originalWidth":I
    const/4 v3, -0x1

    #@157
    move-object/from16 v0, v19

    #@159
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@15b
    .line 151
    const/4 v12, 0x0

    #@15c
    move-object/from16 v7, p0

    #@15e
    move-object/from16 v8, v18

    #@160
    move/from16 v9, p1

    #@162
    move/from16 v11, p2

    #@164
    .line 150
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@167
    .line 152
    move/from16 v0, v24

    #@169
    move-object/from16 v1, v19

    #@16b
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@16d
    .line 154
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    #@170
    move-result v3

    #@171
    move-object/from16 v0, v19

    #@173
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@175
    add-int/2addr v3, v5

    #@176
    move-object/from16 v0, v19

    #@178
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@17a
    add-int/2addr v3, v5

    #@17b
    add-int/2addr v10, v3

    #@17c
    .line 157
    .end local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v24    # "originalWidth":I
    :cond_f
    move-object/from16 v0, p0

    #@17e
    iget v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    #@180
    add-int/2addr v3, v10

    #@181
    move-object/from16 v0, p0

    #@183
    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    #@185
    add-int/2addr v3, v5

    #@186
    move-object/from16 v0, p0

    #@188
    iput v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    #@18a
    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumWidth()I

    #@18d
    move-result v3

    #@18e
    move/from16 v0, p1

    #@190
    invoke-static {v3, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    #@193
    move-result v3

    #@194
    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumHeight()I

    #@197
    move-result v5

    #@198
    move/from16 v0, p2

    #@19a
    invoke-static {v5, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    #@19d
    move-result v5

    #@19e
    .line 158
    move-object/from16 v0, p0

    #@1a0
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/widget/NotificationActionListLayout;->setMeasuredDimension(II)V

    #@1a3
    .line 52
    return-void

    #@1a4
    .line 141
    :cond_10
    const/4 v3, 0x1

    #@1a5
    move/from16 v0, v23

    #@1a7
    if-ne v0, v3, :cond_f

    #@1a9
    goto :goto_7
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    #@3
    .line 187
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    #@6
    .line 185
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    #@3
    .line 193
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    #@6
    .line 191
    return-void
.end method

.method public setEmphasizedMode(Z)V
    .locals 4
    .param p1, "emphasizedMode"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    #@2
    .line 271
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingTop()I

    #@9
    move-result v2

    #@a
    .line 272
    if-eqz p1, :cond_0

    #@c
    const/4 v0, 0x0

    #@d
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingBottom()I

    #@10
    move-result v3

    #@11
    .line 271
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    #@14
    .line 273
    if-eqz p1, :cond_1

    #@16
    const/4 v0, 0x0

    #@17
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@1a
    .line 274
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->requestLayout()V

    #@1d
    .line 269
    return-void

    #@1e
    .line 272
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingEnd:I

    #@20
    goto :goto_0

    #@21
    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    #@23
    goto :goto_1
.end method
