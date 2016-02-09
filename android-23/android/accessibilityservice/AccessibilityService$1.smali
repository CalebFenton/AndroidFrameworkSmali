.class Landroid/accessibilityservice/AccessibilityService$1;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accessibilityservice/AccessibilityService;

    #@0
    .prologue
    .line 645
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public init(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "connectionId"    # I
    .param p2, "windowToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 663
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    #@2
    invoke-static {v1, p1}, Landroid/accessibilityservice/AccessibilityService;->-set0(Landroid/accessibilityservice/AccessibilityService;I)I

    #@5
    .line 664
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    #@7
    invoke-static {v1, p2}, Landroid/accessibilityservice/AccessibilityService;->-set1(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@a
    .line 668
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    #@c
    const-string/jumbo v2, "window"

    #@f
    invoke-virtual {v1, v2}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/view/WindowManagerImpl;

    #@15
    .line 669
    .local v0, "wm":Landroid/view/WindowManagerImpl;
    invoke-virtual {v0, p2}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    #@18
    .line 662
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    #@2
    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@5
    .line 657
    return-void
.end method

.method public onGesture(I)Z
    .locals 1
    .param p1, "gestureId"    # I

    #@0
    .prologue
    .line 674
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    #@2
    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onGesture(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onInterrupt()V
    .locals 1

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    #@2
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->onInterrupt()V

    #@5
    .line 652
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 679
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    #@2
    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onServiceConnected()V
    .locals 1

    #@0
    .prologue
    .line 648
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    #@2
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    #@5
    .line 647
    return-void
.end method
