.class final Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


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
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewId:I

.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method private constructor <init>(Landroid/view/AccessibilityInteractionController;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/AccessibilityInteractionController;

    #@0
    .prologue
    .line 1214
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->this$0:Landroid/view/AccessibilityInteractionController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1215
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    #@8
    .line 1214
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/AccessibilityInteractionController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;)V

    #@3
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1230
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->this$0:Landroid/view/AccessibilityInteractionController;

    #@a
    invoke-static {v0, p1}, Landroid/view/AccessibilityInteractionController;->-wrap0(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1231
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mInfos:Ljava/util/List;

    #@12
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 1233
    :cond_0
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1229
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "view":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->apply(Landroid/view/View;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public init(ILjava/util/List;)V
    .locals 0
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1219
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iput p1, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    #@2
    .line 1220
    iput-object p2, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mInfos:Ljava/util/List;

    #@4
    .line 1218
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 1224
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mViewId:I

    #@3
    .line 1225
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->mInfos:Ljava/util/List;

    #@6
    .line 1223
    return-void
.end method
