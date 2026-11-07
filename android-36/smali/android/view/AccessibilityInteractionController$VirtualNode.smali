.class Landroid/view/AccessibilityInteractionController$VirtualNode;
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
    name = "VirtualNode"
.end annotation


# instance fields
.field blacklist mInfoId:J

.field blacklist mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V
    .registers 5
    .param p2, "id"    # J
    .param p4, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
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

    .line 1967
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1968
    iput-wide p2, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mInfoId:J

    .line 1969
    iput-object p4, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 1970
    return-void
.end method


# virtual methods
.method public blacklist addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    .registers 10
    .param p1, "virtualRoot"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "deque"    # Landroid/view/AccessibilityInteractionController$PrefetchDeque;

    .line 1982
    if-nez p1, :cond_3

    .line 1983
    return-void

    .line 1985
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 1986
    .local v0, "childCount":I
    invoke-virtual {p2}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isStack()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1987
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_24

    .line 1988
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    .line 1989
    .local v2, "childNodeId":J
    new-instance v4, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    invoke-direct {v4, v5, v2, v3, v6}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    invoke-virtual {p2, v4}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->push(Ljava/lang/Object;)V

    .line 1987
    .end local v2    # "childNodeId":J
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .end local v1    # "i":I
    :cond_24
    goto :goto_3b

    .line 1992
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_26
    if-ge v1, v0, :cond_3b

    .line 1993
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    .line 1994
    .restart local v2    # "childNodeId":J
    new-instance v4, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    invoke-direct {v4, v5, v2, v3, v6}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    invoke-virtual {p2, v4}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->push(Ljava/lang/Object;)V

    .line 1992
    .end local v2    # "childNodeId":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1997
    .end local v1    # "i":I
    :cond_3b
    :goto_3b
    return-void
.end method

.method public blacklist getA11yNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .line 1973
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    if-nez v0, :cond_6

    .line 1974
    const/4 v0, 0x0

    return-object v0

    .line 1976
    :cond_6
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    iget-wide v1, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mInfoId:J

    .line 1977
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    .line 1976
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method
