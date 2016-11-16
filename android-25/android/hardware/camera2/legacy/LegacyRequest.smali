.class public Landroid/hardware/camera2/legacy/LegacyRequest;
.super Ljava/lang/Object;
.source "LegacyRequest.java"


# instance fields
.field public final captureRequest:Landroid/hardware/camera2/CaptureRequest;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public final parameters:Landroid/hardware/Camera$Parameters;

.field public final previewSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "previewSize"    # Landroid/util/Size;
    .param p4, "parameters"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const-string/jumbo v0, "characteristics must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    #@c
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@e
    .line 50
    const-string/jumbo v0, "captureRequest must not be null"

    #@11
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    #@17
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    #@19
    .line 51
    const-string/jumbo v0, "previewSize must not be null"

    #@1c
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/util/Size;

    #@22
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    #@24
    .line 52
    const-string/jumbo v0, "parameters must not be null"

    #@27
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 54
    invoke-static {p4}, Landroid/hardware/Camera;->getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@30
    .line 48
    return-void
.end method


# virtual methods
.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 63
    const-string/jumbo v0, "parameters must not be null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 65
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@8
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    #@b
    .line 62
    return-void
.end method
