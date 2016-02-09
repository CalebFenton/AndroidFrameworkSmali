.class Lcom/android/uiautomator/core/UiDevice$2;
.super Ljava/lang/Object;
.source "UiDevice.java"

# interfaces
.implements Landroid/app/UiAutomation$AccessibilityEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/UiDevice;->waitForWindowUpdate(Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/UiDevice;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/UiDevice;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/UiDevice;
    .param p2, "val$packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/uiautomator/core/UiDevice$2;->this$0:Lcom/android/uiautomator/core/UiDevice;

    #@2
    iput-object p2, p0, Lcom/android/uiautomator/core/UiDevice$2;->val$packageName:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "t"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 803
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x800

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 804
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice$2;->val$packageName:Ljava/lang/String;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice$2;->val$packageName:Ljava/lang/String;

    #@e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    :goto_0
    return v0

    #@17
    :cond_0
    const/4 v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 806
    :cond_1
    const/4 v0, 0x0

    #@1a
    return v0
.end method
