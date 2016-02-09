.class Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;
.super Lcom/android/server/policy/WakeGestureListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWakeGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    .line 749
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WakeGestureListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@5
    .line 748
    return-void
.end method


# virtual methods
.method public onWakeUp()V
    .locals 6

    #@0
    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-get2(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@9
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap0(Lcom/android/server/policy/PhoneWindowManager;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 756
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@11
    const/4 v2, 0x0

    #@12
    const/4 v3, 0x1

    #@13
    const/4 v4, 0x0

    #@14
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@17
    .line 757
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1c
    move-result-wide v2

    #@1d
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@1f
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->-get0(Lcom/android/server/policy/PhoneWindowManager;)Z

    #@22
    move-result v4

    #@23
    .line 758
    const-string/jumbo v5, "android.policy:GESTURE"

    #@26
    .line 757
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->-wrap1(Lcom/android/server/policy/PhoneWindowManager;JZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    :cond_0
    monitor-exit v1

    #@2a
    .line 753
    return-void

    #@2b
    .line 754
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    throw v0
.end method
