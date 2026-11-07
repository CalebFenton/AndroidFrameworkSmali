.class Landroid/view/AccessibilityInteractionController$PrefetchDeque;
.super Ljava/util/ArrayDeque;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefetchDeque"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/view/AccessibilityInteractionController$DequeNode;",
        ">",
        "Ljava/util/ArrayDeque<",
        "TE;>;"
    }
.end annotation


# instance fields
.field blacklist mPrefetchOutput:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mStrategy:I

.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;ILjava/util/List;)V
    .registers 4
    .param p2, "strategy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1850
    .local p0, "this":Landroid/view/AccessibilityInteractionController$PrefetchDeque;, "Landroid/view/AccessibilityInteractionController$PrefetchDeque<TE;>;"
    .local p3, "output":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 1851
    iput p2, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mStrategy:I

    .line 1852
    iput-object p3, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mPrefetchOutput:Ljava/util/List;

    .line 1853
    return-void
.end method


# virtual methods
.method blacklist getNext()Landroid/view/AccessibilityInteractionController$DequeNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1890
    .local p0, "this":Landroid/view/AccessibilityInteractionController$PrefetchDeque;, "Landroid/view/AccessibilityInteractionController$PrefetchDeque<TE;>;"
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isStack()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1891
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$DequeNode;

    return-object v0

    .line 1893
    :cond_d
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$DequeNode;

    return-object v0
.end method

.method blacklist isStack()Z
    .registers 2

    .line 1897
    .local p0, "this":Landroid/view/AccessibilityInteractionController$PrefetchDeque;, "Landroid/view/AccessibilityInteractionController$PrefetchDeque<TE;>;"
    iget v0, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mStrategy:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method blacklist performTraversalAndPrefetch()V
    .registers 5

    .line 1872
    .local p0, "this":Landroid/view/AccessibilityInteractionController$PrefetchDeque;, "Landroid/view/AccessibilityInteractionController$PrefetchDeque<TE;>;"
    nop

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1873
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->getNext()Landroid/view/AccessibilityInteractionController$DequeNode;

    move-result-object v0

    .line 1874
    .local v0, "child":Landroid/view/AccessibilityInteractionController$DequeNode;, "TE;"
    invoke-interface {v0}, Landroid/view/AccessibilityInteractionController$DequeNode;->getA11yNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1875
    .local v1, "childInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_16

    .line 1876
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mPrefetchOutput:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1878
    :cond_16
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v2}, Landroid/view/AccessibilityInteractionController;->-$$Nest$fgetmPrefetcher(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    move-result-object v2

    iget-object v3, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mPrefetchOutput:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v2
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_31

    if-eqz v2, :cond_28

    .line 1885
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->clear()V

    .line 1879
    return-void

    .line 1882
    :cond_28
    :try_start_28
    invoke-interface {v0, v1, p0}, Landroid/view/AccessibilityInteractionController$DequeNode;->addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_31

    .line 1883
    .end local v0    # "child":Landroid/view/AccessibilityInteractionController$DequeNode;, "TE;"
    .end local v1    # "childInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 1885
    :cond_2c
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->clear()V

    .line 1886
    nop

    .line 1887
    return-void

    .line 1885
    :catchall_31
    move-exception v0

    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->clear()V

    .line 1886
    throw v0
.end method
