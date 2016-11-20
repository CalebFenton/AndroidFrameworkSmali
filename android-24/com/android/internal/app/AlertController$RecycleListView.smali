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
.field private final mPaddingBottomNoButtons:I

.field private final mPaddingTopNoTitle:I

.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 887
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 886
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 891
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 884
    iput-boolean v3, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    #@7
    .line 894
    sget-object v1, Lcom/android/internal/R$styleable;->RecycleListView:[I

    #@9
    .line 893
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    .line 896
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@e
    .line 895
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@11
    move-result v1

    #@12
    iput v1, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    #@14
    .line 897
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@17
    move-result v1

    #@18
    iput v1, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    #@1a
    .line 890
    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    #@0
    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    #@2
    return v0
.end method

.method public setHasDecor(ZZ)V
    .locals 4
    .param p1, "hasTitle"    # Z
    .param p2, "hasButtons"    # Z

    #@0
    .prologue
    .line 902
    if-eqz p2, :cond_0

    #@2
    if-eqz p1, :cond_0

    #@4
    .line 901
    :goto_0
    return-void

    #@5
    .line 903
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingLeft()I

    #@8
    move-result v1

    #@9
    .line 904
    .local v1, "paddingLeft":I
    if-eqz p1, :cond_1

    #@b
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingTop()I

    #@e
    move-result v3

    #@f
    .line 905
    .local v3, "paddingTop":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingRight()I

    #@12
    move-result v2

    #@13
    .line 906
    .local v2, "paddingRight":I
    if-eqz p2, :cond_2

    #@15
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingBottom()I

    #@18
    move-result v0

    #@19
    .line 907
    .local v0, "paddingBottom":I
    :goto_2
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/app/AlertController$RecycleListView;->setPadding(IIII)V

    #@1c
    goto :goto_0

    #@1d
    .line 904
    .end local v0    # "paddingBottom":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingTop":I
    :cond_1
    iget v3, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    #@1f
    .restart local v3    # "paddingTop":I
    goto :goto_1

    #@20
    .line 906
    .restart local v2    # "paddingRight":I
    :cond_2
    iget v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    #@22
    goto :goto_2
.end method
