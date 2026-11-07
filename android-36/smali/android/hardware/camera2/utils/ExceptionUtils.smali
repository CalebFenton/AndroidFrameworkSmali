.class public Landroid/hardware/camera2/utils/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;
    .registers 4
    .param p0, "e"    # Landroid/os/RemoteException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 96
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_d

    .line 97
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x2

    const-string v2, "Camera service has died unexpectedly"

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 101
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;
    .registers 4
    .param p0, "e"    # Landroid/os/ServiceSpecificException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 48
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_30

    .line 72
    :pswitch_5
    const/4 v0, 0x3

    .local v0, "reason":I
    goto :goto_26

    .line 62
    .end local v0    # "reason":I
    :pswitch_7
    const/16 v0, 0x3e8

    .line 63
    .restart local v0    # "reason":I
    goto :goto_26

    .line 59
    .end local v0    # "reason":I
    :pswitch_a
    const/4 v0, 0x5

    .line 60
    .restart local v0    # "reason":I
    goto :goto_26

    .line 56
    .end local v0    # "reason":I
    :pswitch_c
    const/4 v0, 0x4

    .line 57
    .restart local v0    # "reason":I
    goto :goto_26

    .line 53
    .end local v0    # "reason":I
    :pswitch_e
    const/4 v0, 0x1

    .line 54
    .restart local v0    # "reason":I
    goto :goto_26

    .line 50
    .end local v0    # "reason":I
    :pswitch_10
    const/4 v0, 0x2

    .line 51
    .restart local v0    # "reason":I
    goto :goto_26

    .line 66
    .end local v0    # "reason":I
    :pswitch_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 68
    :pswitch_1c
    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 75
    .restart local v0    # "reason":I
    :goto_26
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_12
        :pswitch_12
        :pswitch_10
        :pswitch_5
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method
