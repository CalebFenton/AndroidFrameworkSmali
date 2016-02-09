.class Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Landroid/app/UiAutomation$AccessibilityEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/InteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventCollectingPredicate"
.end annotation


# instance fields
.field mEventsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mMask:I

.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/InteractionController;
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p3, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;->this$0:Lcom/android/uiautomator/core/InteractionController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 101
    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;->mMask:I

    #@7
    .line 102
    iput-object p3, p0, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;->mEventsList:Ljava/util/List;

    #@9
    .line 100
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "t"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 108
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@4
    move-result v0

    #@5
    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;->mMask:I

    #@7
    and-int/2addr v0, v1

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 111
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;->mEventsList:Ljava/util/List;

    #@c
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 115
    :cond_0
    return v2
.end method
