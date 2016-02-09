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
.field final synthetic this$0:Lcom/android/internal/widget/ExploreByTouchHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ExploreByTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ExploreByTouchHelper;

    #@0
    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    #@2
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ExploreByTouchHelper;Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ExploreByTouchHelper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/android/internal/widget/ExploreByTouchHelper;)V

    #@3
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->-wrap0(Lcom/android/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    #@2
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->-wrap1(Lcom/android/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
