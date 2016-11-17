.class Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

.field final synthetic val$afMode:Ljava/lang/String;

.field final synthetic val$currentAfRun:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
    .param p2, "val$currentAfRun"    # I
    .param p3, "val$afMode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 117
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@2
    iput p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    #@4
    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "start"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    #@0
    .prologue
    .line 120
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@2
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get2(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 121
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@9
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get1(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I

    #@c
    move-result v0

    #@d
    .line 130
    .local v0, "latestAfRun":I
    iget v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    #@f
    if-eq v2, v0, :cond_0

    #@11
    .line 131
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get0()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "onAutoFocusMoving - ignoring move callbacks from old af run"

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 133
    iget v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    #@23
    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 131
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v3

    #@2f
    .line 135
    return-void

    #@30
    .line 138
    :cond_0
    if-eqz p1, :cond_2

    #@32
    .line 139
    const/4 v1, 0x1

    #@33
    .line 143
    .local v1, "newAfState":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    #@35
    const-string/jumbo v4, "continuous-picture"

    #@38
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_3

    #@3e
    .line 154
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@40
    invoke-static {v2, v1}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-set0(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v3

    #@44
    .line 119
    return-void

    #@45
    .line 140
    .end local v1    # "newAfState":I
    :cond_2
    const/4 v1, 0x2

    #@46
    .restart local v1    # "newAfState":I
    goto :goto_0

    #@47
    .line 143
    :cond_3
    :try_start_2
    const-string/jumbo v4, "continuous-video"

    #@4a
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v2

    #@4e
    if-nez v2, :cond_1

    #@50
    .line 149
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get0()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "onAutoFocus - got unexpected onAutoFocus in mode "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    .line 150
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    #@62
    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6d
    goto :goto_1

    #@6e
    .line 120
    .end local v0    # "latestAfRun":I
    .end local v1    # "newAfState":I
    :catchall_0
    move-exception v2

    #@6f
    monitor-exit v3

    #@70
    throw v2
.end method
