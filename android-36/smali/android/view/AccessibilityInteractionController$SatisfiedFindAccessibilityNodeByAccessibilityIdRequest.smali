.class Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SatisfiedFindAccessibilityNodeByAccessibilityIdRequest"
.end annotation


# instance fields
.field final blacklist mSatisfiedRequestCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field final blacklist mSatisfiedRequestInteractionId:I

.field final blacklist mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;


# direct methods
.method constructor blacklist <init>(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V
    .registers 4
    .param p1, "satisfiedRequestNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "satisfiedRequestCallback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "satisfiedRequestInteractionId"    # I

    .line 1838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1839
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1840
    iput-object p2, p0, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 1841
    iput p3, p0, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestInteractionId:I

    .line 1842
    return-void
.end method
