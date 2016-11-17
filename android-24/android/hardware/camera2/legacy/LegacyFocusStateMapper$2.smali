.class Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


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
    .line 205
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@2
    iput p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    #@4
    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    #@0
    .prologue
    .line 208
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@2
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get2(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 209
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@9
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get1(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I

    #@c
    move-result v0

    #@d
    .line 217
    .local v0, "latestAfRun":I
    iget v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    #@f
    if-eq v0, v2, :cond_0

    #@11
    .line 218
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get0()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v4, "onAutoFocus - ignoring AF callback (old run %d, new run %d)"

    #@18
    const/4 v5, 0x2

    #@19
    new-array v5, v5, [Ljava/lang/Object;

    #@1b
    .line 219
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    #@1d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v6

    #@21
    const/4 v7, 0x0

    #@22
    aput-object v6, v5, v7

    #@24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v6

    #@28
    const/4 v7, 0x1

    #@29
    aput-object v6, v5, v7

    #@2b
    .line 218
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit v3

    #@33
    .line 221
    return-void

    #@34
    .line 224
    :cond_0
    if-eqz p1, :cond_2

    #@36
    .line 225
    const/4 v1, 0x4

    #@37
    .line 228
    .local v1, "newAfState":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    #@39
    const-string/jumbo v4, "auto"

    #@3c
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_3

    #@42
    .line 241
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@44
    invoke-static {v2, v1}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-set0(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    monitor-exit v3

    #@48
    .line 207
    return-void

    #@49
    .line 226
    .end local v1    # "newAfState":I
    :cond_2
    const/4 v1, 0x5

    #@4a
    .restart local v1    # "newAfState":I
    goto :goto_0

    #@4b
    .line 228
    :cond_3
    :try_start_2
    const-string/jumbo v4, "continuous-picture"

    #@4e
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v4

    #@52
    if-nez v4, :cond_1

    #@54
    const-string/jumbo v4, "continuous-video"

    #@57
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v4

    #@5b
    if-nez v4, :cond_1

    #@5d
    const-string/jumbo v4, "macro"

    #@60
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v2

    #@64
    if-nez v2, :cond_1

    #@66
    .line 236
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get0()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    new-instance v4, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v5, "onAutoFocus - got unexpected onAutoFocus in mode "

    #@72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 237
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    #@78
    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@83
    goto :goto_1

    #@84
    .line 208
    .end local v0    # "latestAfRun":I
    .end local v1    # "newAfState":I
    :catchall_0
    move-exception v2

    #@85
    monitor-exit v3

    #@86
    throw v2
.end method
