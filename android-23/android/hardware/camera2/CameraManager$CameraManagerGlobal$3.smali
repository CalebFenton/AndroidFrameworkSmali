.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field final synthetic val$callback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .param p2, "val$callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p3, "val$id"    # Ljava/lang/String;
    .param p4, "val$status"    # I

    #@0
    .prologue
    .line 969
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@2
    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$callback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    #@4
    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$id:Ljava/lang/String;

    #@6
    iput p4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$status:I

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 972
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$callback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    #@2
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$id:Ljava/lang/String;

    #@4
    iget v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$status:I

    #@6
    .line 973
    const/4 v3, 0x2

    #@7
    .line 972
    if-ne v0, v3, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeChanged(Ljava/lang/String;Z)V

    #@d
    .line 971
    return-void

    #@e
    .line 972
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method
