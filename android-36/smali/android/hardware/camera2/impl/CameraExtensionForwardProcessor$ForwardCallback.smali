.class Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;
.super Ljava/lang/Object;
.source "CameraExtensionForwardProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)V

    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .registers 8
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 129
    const-string v0, "CameraExtensionForward"

    const/4 v1, 0x0

    .line 131
    .local v1, "processedImage":Landroid/media/Image;
    :try_start_3
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_7} :catch_66

    .line 135
    .end local v1    # "processedImage":Landroid/media/Image;
    .local v2, "processedImage":Landroid/media/Image;
    nop

    .line 136
    if-nez v2, :cond_10

    .line 137
    const-string v1, "Invalid image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 141
    :cond_10
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 142
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/media/ImageWriter;

    move-result-object v1

    if-nez v1, :cond_48

    .line 143
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v3

    .line 144
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v4

    .line 143
    const/4 v5, 0x3

    invoke-static {v3, v5, v4}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fputmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/media/ImageWriter;)V

    .line 147
    :cond_48
    :try_start_48
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/media/ImageWriter;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_51
    .catch Ljava/lang/IllegalStateException; {:try_start_48 .. :try_end_51} :catch_52

    goto :goto_61

    .line 148
    :catch_52
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Failed to queue processed buffer!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 151
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fputmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Z)V

    .line 152
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_61
    goto :goto_65

    .line 154
    :cond_62
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 156
    :goto_65
    return-void

    .line 132
    .end local v2    # "processedImage":Landroid/media/Image;
    .local v1, "processedImage":Landroid/media/Image;
    :catch_66
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Failed to acquire processed image!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method
