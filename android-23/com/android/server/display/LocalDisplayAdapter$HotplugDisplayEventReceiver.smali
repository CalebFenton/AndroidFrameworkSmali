.class final Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotplugDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@2
    .line 456
    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    #@5
    .line 455
    return-void
.end method


# virtual methods
.method public onHotplug(JIZ)V
    .locals 2
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "connected"    # Z

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 462
    if-eqz p4, :cond_0

    #@9
    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@b
    invoke-static {v0, p3}, Lcom/android/server/display/LocalDisplayAdapter;->-wrap0(Lcom/android/server/display/LocalDisplayAdapter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :goto_0
    monitor-exit v1

    #@f
    .line 460
    return-void

    #@10
    .line 465
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #@12
    invoke-static {v0, p3}, Lcom/android/server/display/LocalDisplayAdapter;->-wrap1(Lcom/android/server/display/LocalDisplayAdapter;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 461
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method
