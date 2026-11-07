.class Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleRowViewHolder"
.end annotation


# instance fields
.field private final blacklist mRow:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;II)V
    .registers 4
    .param p1, "row"    # Landroid/view/ViewGroup;
    .param p2, "cellCount"    # I
    .param p3, "viewType"    # I

    .line 3805
    invoke-direct {p0, p2, p1, p3}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;-><init>(ILandroid/view/View;I)V

    .line 3807
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    .line 3808
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 3824
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3825
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 3827
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getRow(I)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "rowNumber"    # I

    .line 3819
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0

    .line 3820
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRowByIndex(I)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "index"    # I

    .line 3815
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .line 3811
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist setViewVisibility(II)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 3831
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3832
    return-void
.end method
