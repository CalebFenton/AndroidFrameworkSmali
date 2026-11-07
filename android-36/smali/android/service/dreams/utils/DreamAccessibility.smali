.class public Landroid/service/dreams/utils/DreamAccessibility;
.super Ljava/lang/Object;
.source "DreamAccessibility.java"


# instance fields
.field private final blacklist mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDismissCallback:Ljava/lang/Runnable;

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDismissCallback(Landroid/service/dreams/utils/DreamAccessibility;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mDismissCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "dismissCallback"    # Ljava/lang/Runnable;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/service/dreams/utils/DreamAccessibility;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Landroid/service/dreams/utils/DreamAccessibility;->mView:Landroid/view/View;

    .line 42
    iget-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/service/dreams/utils/DreamAccessibility;->createNewAccessibilityDelegate(Landroid/content/Context;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 43
    iput-object p3, p0, Landroid/service/dreams/utils/DreamAccessibility;->mDismissCallback:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method private blacklist addAccessibilityConfiguration()V
    .registers 3

    .line 59
    iget-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/service/dreams/utils/DreamAccessibility;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 60
    return-void
.end method

.method private blacklist createNewAccessibilityDelegate(Landroid/content/Context;)Landroid/view/View$AccessibilityDelegate;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/service/dreams/utils/DreamAccessibility$1;

    invoke-direct {v0, p0, p1}, Landroid/service/dreams/utils/DreamAccessibility$1;-><init>(Landroid/service/dreams/utils/DreamAccessibility;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public blacklist updateAccessibilityConfiguration()V
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_b

    .line 51
    invoke-direct {p0}, Landroid/service/dreams/utils/DreamAccessibility;->addAccessibilityConfiguration()V

    .line 53
    :cond_b
    return-void
.end method
