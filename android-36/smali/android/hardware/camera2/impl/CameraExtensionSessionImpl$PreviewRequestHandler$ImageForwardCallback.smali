.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageForwardCallback"
.end annotation


# instance fields
.field private final blacklist mOutputWriter:Landroid/media/ImageWriter;

.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/media/ImageWriter;)V
    .registers 3
    .param p2, "imageWriter"    # Landroid/media/ImageWriter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1956
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1957
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;->mOutputWriter:Landroid/media/ImageWriter;

    .line 1958
    return-void
.end method


# virtual methods
.method public blacklist onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V
    .registers 8
    .param p1, "reader"    # Landroid/media/ImageReader;
    .param p2, "img"    # Landroid/media/Image;

    .line 1968
    const-string v0, "Output surface likely abandoned, dropping buffer!"

    const-string v1, "CameraExtensionSessionImpl"

    if-nez p2, :cond_c

    .line 1969
    const-string v0, "Invalid image!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    return-void

    .line 1974
    :cond_c
    :try_start_c
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-virtual {v2, p2}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_11} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_2e

    .line 1980
    :catch_12
    move-exception v2

    .line 1986
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1992
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    goto :goto_2f

    .line 1989
    :cond_26
    throw v2

    .line 1975
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_27
    move-exception v2

    .line 1978
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 1994
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_2e
    nop

    .line 1995
    :goto_2f
    return-void
.end method

.method public blacklist onImageDropped(J)V
    .registers 7
    .param p1, "timestamp"    # J

    .line 1962
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$mdiscardPendingRepeatingResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;ILandroid/util/LongSparseArray;Z)V

    .line 1964
    return-void
.end method
