.class Landroid/view/AccessibilityInteractionController$ViewNode;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"

# interfaces
.implements Landroid/view/AccessibilityInteractionController$DequeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewNode"
.end annotation


# instance fields
.field private final blacklist mTempViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mView:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)V
    .registers 3
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1910
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1908
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mTempViewList:Ljava/util/ArrayList;

    .line 1911
    iput-object p2, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    .line 1912
    return-void
.end method

.method private blacklist addChild(Ljava/util/ArrayDeque;Landroid/view/View;)V
    .registers 8
    .param p1, "deque"    # Ljava/util/ArrayDeque;
    .param p2, "child"    # Landroid/view/View;

    .line 1951
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v0, p2}, Landroid/view/AccessibilityInteractionController;->-$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1952
    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1953
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_19

    .line 1954
    new-instance v1, Landroid/view/AccessibilityInteractionController$ViewNode;

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {v1, v2, p2}, Landroid/view/AccessibilityInteractionController$ViewNode;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_25

    .line 1956
    :cond_19
    new-instance v1, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1960
    .end local v0    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public blacklist addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    .registers 7
    .param p1, "virtualRoot"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "deque"    # Landroid/view/AccessibilityInteractionController$PrefetchDeque;

    .line 1924
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1925
    return-void

    .line 1927
    :cond_5
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    .line 1928
    return-void

    .line 1930
    :cond_c
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mTempViewList:Ljava/util/ArrayList;

    .line 1931
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1933
    :try_start_11
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1934
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1936
    .local v1, "childCount":I
    invoke-virtual {p2}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isStack()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1937
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_22
    if-ltz v2, :cond_30

    .line 1938
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, p2, v3}, Landroid/view/AccessibilityInteractionController$ViewNode;->addChild(Ljava/util/ArrayDeque;Landroid/view/View;)V

    .line 1937
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .end local v2    # "i":I
    :cond_30
    goto :goto_40

    .line 1941
    :cond_31
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_32
    if-ge v2, v1, :cond_40

    .line 1942
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, p2, v3}, Landroid/view/AccessibilityInteractionController$ViewNode;->addChild(Ljava/util/ArrayDeque;Landroid/view/View;)V
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_45

    .line 1941
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1946
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_40
    :goto_40
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1947
    nop

    .line 1948
    return-void

    .line 1946
    :catchall_45
    move-exception v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1947
    throw v1
.end method

.method public blacklist getA11yNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 1916
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 1917
    const/4 v0, 0x0

    return-object v0

    .line 1919
    :cond_6
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method
