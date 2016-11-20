.class Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RowViewHolder"
.end annotation


# instance fields
.field final cells:[Landroid/view/View;

.field itemIndices:[I

.field measuredRowHeight:I

.field final row:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "row"    # Landroid/view/ViewGroup;
    .param p2, "cellCount"    # I

    #@0
    .prologue
    .line 1346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1347
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    #@5
    .line 1348
    new-array v0, p2, [Landroid/view/View;

    #@7
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    #@9
    .line 1349
    new-array v0, p2, [I

    #@b
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    #@d
    .line 1346
    return-void
.end method


# virtual methods
.method public measure()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1353
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@4
    move-result v0

    #@5
    .line 1354
    .local v0, "spec":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    #@7
    invoke-virtual {v1, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    #@a
    .line 1355
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    #@c
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    #@f
    move-result v1

    #@10
    iput v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    #@12
    .line 1352
    return-void
.end method
