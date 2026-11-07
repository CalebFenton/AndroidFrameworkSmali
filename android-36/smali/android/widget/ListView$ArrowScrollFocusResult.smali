.class Landroid/widget/ListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private greylist-max-o mAmountToScroll:I

.field private greylist-max-o mSelectedPosition:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 3020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ListView-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o getAmountToScroll()I
    .registers 2

    .line 3037
    iget v0, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public greylist-max-o getSelectedPosition()I
    .registers 2

    .line 3033
    iget v0, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method greylist-max-o populate(II)V
    .registers 3
    .param p1, "selectedPosition"    # I
    .param p2, "amountToScroll"    # I

    .line 3028
    iput p1, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 3029
    iput p2, p0, Landroid/widget/ListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 3030
    return-void
.end method
