.class final Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddNodeInfosForViewId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mViewId:I

.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method private constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1795
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1796
    const/4 p1, -0x1

    iput p1, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o init(ILjava/util/List;)V
    .registers 3
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1800
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iput p1, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    .line 1801
    iput-object p2, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mInfos:Ljava/util/List;

    .line 1802
    return-void
.end method

.method public greylist-max-o reset()V
    .registers 2

    .line 1805
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    .line 1806
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mInfos:Ljava/util/List;

    .line 1807
    return-void
.end method

.method public greylist-max-o test(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1811
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$misVisibleToAccessibilityService(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1812
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mInfos:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1814
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1795
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->test(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
