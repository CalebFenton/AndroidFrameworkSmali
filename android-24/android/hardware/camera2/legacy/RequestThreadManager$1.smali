.class Landroid/hardware/camera2/legacy/RequestThreadManager$1;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@0
    .prologue
    .line 187
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    #@0
    .prologue
    .line 190
    packed-switch p1, :pswitch_data_0

    #@3
    .line 197
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@5
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Received error "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " from the Camera1 ErrorCallback"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 198
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@29
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@2c
    move-result-object v0

    #@2d
    .line 199
    const/4 v1, 0x1

    #@2e
    .line 198
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@31
    .line 189
    :goto_0
    return-void

    #@32
    .line 192
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@34
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->flush()J

    #@37
    .line 193
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@39
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@3c
    move-result-object v0

    #@3d
    .line 194
    const/4 v1, 0x0

    #@3e
    .line 193
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@41
    goto :goto_0

    #@42
    .line 190
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
