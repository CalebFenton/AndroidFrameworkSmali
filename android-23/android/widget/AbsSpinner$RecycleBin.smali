.class Landroid/widget/AbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/AbsSpinner;


# direct methods
.method constructor <init>(Landroid/widget/AbsSpinner;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsSpinner;

    #@0
    .prologue
    .line 439
    iput-object p1, p0, Landroid/widget/AbsSpinner$RecycleBin;->this$0:Landroid/widget/AbsSpinner;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 440
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v0, p0, Landroid/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    #@c
    .line 439
    return-void
.end method


# virtual methods
.method clear()V
    .locals 6

    #@0
    .prologue
    .line 459
    iget-object v2, p0, Landroid/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    #@2
    .line 460
    .local v2, "scrapHeap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v0

    #@6
    .line 461
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 462
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/view/View;

    #@f
    .line 463
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    #@11
    .line 464
    iget-object v4, p0, Landroid/widget/AbsSpinner$RecycleBin;->this$0:Landroid/widget/AbsSpinner;

    #@13
    const/4 v5, 0x1

    #@14
    invoke-static {v4, v3, v5}, Landroid/widget/AbsSpinner;->-wrap0(Landroid/widget/AbsSpinner;Landroid/view/View;Z)V

    #@17
    .line 461
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 467
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    #@1d
    .line 458
    return-void
.end method

.method get(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 448
    iget-object v1, p0, Landroid/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .line 449
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 451
    iget-object v1, p0, Landroid/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    #@f
    .line 455
    :cond_0
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Landroid/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@5
    .line 442
    return-void
.end method
