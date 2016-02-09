.class final Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;
.super Ljava/lang/Object;
.source "UiAutomation.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Landroid/app/UiAutomation;


# direct methods
.method constructor <init>(Landroid/app/UiAutomation;)V
    .locals 0
    .param p1, "val$this$0"    # Landroid/app/UiAutomation;

    #@0
    .prologue
    .line 921
    iput-object p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public init(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "connectionId"    # I
    .param p2, "windowToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 924
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    #@2
    invoke-static {v0}, Landroid/app/UiAutomation;->-get1(Landroid/app/UiAutomation;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 925
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    #@9
    invoke-static {v0, p1}, Landroid/app/UiAutomation;->-set0(Landroid/app/UiAutomation;I)I

    #@c
    .line 926
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    #@e
    invoke-static {v0}, Landroid/app/UiAutomation;->-get1(Landroid/app/UiAutomation;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 923
    return-void

    #@17
    .line 924
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 948
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    #@2
    invoke-static {v1}, Landroid/app/UiAutomation;->-get1(Landroid/app/UiAutomation;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 949
    :try_start_0
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    #@9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    #@c
    move-result-wide v4

    #@d
    invoke-static {v1, v4, v5}, Landroid/app/UiAutomation;->-set1(Landroid/app/UiAutomation;J)J

    #@10
    .line 950
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    #@12
    invoke-static {v1}, Landroid/app/UiAutomation;->-get3(Landroid/app/UiAutomation;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 951
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    #@1a
    invoke-static {v1}, Landroid/app/UiAutomation;->-get0(Landroid/app/UiAutomation;)Ljava/util/ArrayList;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 953
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    #@27
    invoke-static {v1}, Landroid/app/UiAutomation;->-get1(Landroid/app/UiAutomation;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v2

    #@2f
    .line 956
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    #@31
    invoke-static {v1}, Landroid/app/UiAutomation;->-get2(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;

    #@34
    move-result-object v0

    #@35
    .line 957
    .local v0, "listener":Landroid/app/UiAutomation$OnAccessibilityEventListener;
    if-eqz v0, :cond_1

    #@37
    .line 958
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    #@3a
    move-result-object v1

    #@3b
    invoke-interface {v0, v1}, Landroid/app/UiAutomation$OnAccessibilityEventListener;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3e
    .line 947
    :cond_1
    return-void

    #@3f
    .line 948
    .end local v0    # "listener":Landroid/app/UiAutomation$OnAccessibilityEventListener;
    :catchall_0
    move-exception v1

    #@40
    monitor-exit v2

    #@41
    throw v1
.end method

.method public onGesture(I)Z
    .locals 1
    .param p1, "gestureId"    # I

    #@0
    .prologue
    .line 943
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onInterrupt()V
    .locals 0

    #@0
    .prologue
    .line 936
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 964
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onServiceConnected()V
    .locals 0

    #@0
    .prologue
    .line 931
    return-void
.end method
