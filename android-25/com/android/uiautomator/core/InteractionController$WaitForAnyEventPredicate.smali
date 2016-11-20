.class Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;
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
    name = "WaitForAnyEventPredicate"
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
    .line 76
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;->this$0:Lcom/android/uiautomator/core/InteractionController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 77
    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;->mMask:I

    #@7
    .line 76
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
    .line 82
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@4
    move-result v0

    #@5
    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;->mMask:I

    #@7
    and-int/2addr v0, v1

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 83
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 87
    :cond_0
    return v2
.end method
