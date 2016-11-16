.class Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;
.super Ljava/lang/Object;
.source "LegacyFaceDetectMapper.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;-><init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    #@0
    .prologue
    .line 88
    if-nez p1, :cond_1

    #@2
    const/4 v0, 0x0

    #@3
    .line 89
    .local v0, "lengthFaces":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@5
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-get2(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    monitor-enter v2

    #@a
    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@c
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-get1(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 91
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@14
    invoke-static {v1, p1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-set0(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    :goto_1
    monitor-exit v2

    #@18
    .line 87
    return-void

    #@19
    .line 88
    .end local v0    # "lengthFaces":I
    :cond_1
    array-length v0, p1

    #@1a
    .restart local v0    # "lengthFaces":I
    goto :goto_0

    #@1b
    .line 92
    :cond_2
    if-lez v0, :cond_0

    #@1d
    .line 94
    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-get0()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 95
    const-string/jumbo v3, "onFaceDetection - Ignored some incoming faces sinceface detection was disabled"

    #@24
    .line 94
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_1

    #@28
    .line 89
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1
.end method
