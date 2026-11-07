.class public Lcom/android/internal/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field private final greylist-max-o mPaddingBottomNoButtons:I

.field private final greylist-max-o mPaddingTopNoTitle:I

.field greylist-max-o mRecycleOnMeasure:Z


# direct methods
.method public constructor greylist-max-r <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1021
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1022
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1026
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1028
    sget-object v1, Lcom/android/internal/R$styleable;->RecycleListView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1030
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    .line 1032
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    .line 1034
    return-void
.end method


# virtual methods
.method protected greylist-max-o recycleOnMeasure()Z
    .registers 2

    .line 1048
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method

.method public greylist-max-o setHasDecor(ZZ)V
    .registers 7
    .param p1, "hasTitle"    # Z
    .param p2, "hasButtons"    # Z

    .line 1037
    if-eqz p2, :cond_4

    if-nez p1, :cond_21

    .line 1038
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingLeft()I

    move-result v0

    .line 1039
    .local v0, "paddingLeft":I
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingTop()I

    move-result v1

    goto :goto_11

    :cond_f
    iget v1, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    .line 1040
    .local v1, "paddingTop":I
    :goto_11
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingRight()I

    move-result v2

    .line 1041
    .local v2, "paddingRight":I
    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingBottom()I

    move-result v3

    goto :goto_1e

    :cond_1c
    iget v3, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    .line 1042
    .local v3, "paddingBottom":I
    :goto_1e
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/app/AlertController$RecycleListView;->setPadding(IIII)V

    .line 1044
    .end local v0    # "paddingLeft":I
    .end local v1    # "paddingTop":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingBottom":I
    :cond_21
    return-void
.end method
