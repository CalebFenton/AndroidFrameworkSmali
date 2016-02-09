.class Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;
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
    name = "WaitForAllEventPredicate"
.end annotation


# instance fields
.field mMask:I

.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/InteractionController;
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->this$0:Lcom/android/uiautomator/core/InteractionController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 125
    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    #@7
    .line 124
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
    .line 131
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@4
    move-result v0

    #@5
    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    #@7
    and-int/2addr v0, v1

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 133
    iget v0, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    #@c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@f
    move-result v1

    #@10
    not-int v1, v1

    #@11
    and-int/2addr v0, v1

    #@12
    iput v0, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    #@14
    .line 136
    iget v0, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 137
    return v2

    #@19
    .line 140
    :cond_0
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 144
    :cond_1
    return v2
.end method
