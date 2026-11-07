.class Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExploreByTouchNodeProvider"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ExploreByTouchHelper;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/ExploreByTouchHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 817
    iput-object p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/ExploreByTouchHelper;Lcom/android/internal/widget/ExploreByTouchHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/android/internal/widget/ExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public whitelist createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .param p1, "virtualViewId"    # I

    .line 820
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    invoke-static {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->-$$Nest$mcreateNode(Lcom/android/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist performAction(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 825
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->-$$Nest$mperformAction(Lcom/android/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
