.class Lcom/android/server/camera/CameraService$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraService;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/camera/CameraService;

    #@0
    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/camera/CameraService$2;->this$0:Lcom/android/server/camera/CameraService;

    #@2
    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public notifyCameraState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I

    #@0
    .prologue
    .line 127
    invoke-static {p2}, Lcom/android/server/camera/CameraService;->-wrap0(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 130
    .local v0, "state":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/camera/CameraService$2;->this$0:Lcom/android/server/camera/CameraService;

    #@6
    invoke-static {v1, p1, p2}, Lcom/android/server/camera/CameraService;->-wrap3(Lcom/android/server/camera/CameraService;Ljava/lang/String;I)V

    #@9
    .line 126
    return-void
.end method

.method public pingForUserUpdate()V
    .locals 2

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/camera/CameraService$2;->this$0:Lcom/android/server/camera/CameraService;

    #@2
    const/16 v1, 0x1e

    #@4
    invoke-static {v0, v1}, Lcom/android/server/camera/CameraService;->-wrap1(Lcom/android/server/camera/CameraService;I)V

    #@7
    .line 121
    return-void
.end method
