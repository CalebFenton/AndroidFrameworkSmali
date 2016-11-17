.class Lcom/android/server/policy/WakeGestureListener$1;
.super Landroid/hardware/TriggerEventListener;
.source "WakeGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WakeGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/WakeGestureListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WakeGestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/WakeGestureListener;

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    #@2
    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/WakeGestureListener;->-get1(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, v2}, Lcom/android/server/policy/WakeGestureListener;->-set0(Lcom/android/server/policy/WakeGestureListener;Z)Z

    #@d
    .line 89
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    #@f
    invoke-static {v0}, Lcom/android/server/policy/WakeGestureListener;->-get0(Lcom/android/server/policy/WakeGestureListener;)Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    #@15
    invoke-static {v2}, Lcom/android/server/policy/WakeGestureListener;->-get2(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Runnable;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 86
    return-void

    #@1e
    .line 87
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method
