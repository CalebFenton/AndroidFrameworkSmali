.class Lcom/android/server/DeviceIdleController$3;
.super Landroid/hardware/TriggerEventListener;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    #@0
    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    #@0
    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    monitor-enter v1

    #@3
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    #@5
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->significantMotionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 254
    return-void

    #@a
    .line 255
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
