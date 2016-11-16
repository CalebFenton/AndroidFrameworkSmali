.class Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2255
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2258
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    .line 2259
    .local v1, "eventType":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    #@6
    .line 2260
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@8
    invoke-static {v2, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$Service;ILandroid/view/accessibility/AccessibilityEvent;)V

    #@b
    .line 2257
    return-void
.end method
