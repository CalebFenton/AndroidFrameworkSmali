.class public Landroid/hardware/camera2/CameraAccessException;
.super Landroid/util/AndroidException;
.source "CameraAccessException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraAccessException$AccessError;
    }
.end annotation


# static fields
.field public static final greylist-max-o CAMERA_DEPRECATED_HAL:I = 0x3e8

.field public static final whitelist CAMERA_DISABLED:I = 0x1

.field public static final whitelist CAMERA_DISCONNECTED:I = 0x2

.field public static final whitelist CAMERA_ERROR:I = 0x3

.field public static final whitelist CAMERA_IN_USE:I = 0x4

.field public static final whitelist MAX_CAMERAS_IN_USE:I = 0x5

.field private static final whitelist serialVersionUID:J = 0x4e22fb28f3a4e7dbL


# instance fields
.field private final greylist-max-o mReason:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "problem"    # I

    .line 112
    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 113
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 114
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 117
    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 118
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 119
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 122
    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 124
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/Throwable;)V
    .registers 4
    .param p1, "problem"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 127
    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 129
    return-void
.end method

.method private static greylist-max-o getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "problem"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 156
    invoke-static {p0}, Landroid/hardware/camera2/CameraAccessException;->getProblemString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "problemString":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s (%d): %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getDefaultMessage(I)Ljava/lang/String;
    .registers 2
    .param p0, "problem"    # I

    .line 135
    packed-switch p0, :pswitch_data_14

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_5
    const-string v0, "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed."

    return-object v0

    .line 137
    :pswitch_8
    const-string v0, "The camera device is in use already"

    return-object v0

    .line 149
    :pswitch_b
    const-string v0, "The camera device is currently in the error state; no further calls to it will succeed."

    return-object v0

    .line 143
    :pswitch_e
    const-string v0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    return-object v0

    .line 147
    :pswitch_11
    const-string v0, "The camera is disabled due to a device policy, and cannot be opened."

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o getProblemString(I)Ljava/lang/String;
    .registers 2
    .param p0, "problem"    # I

    .line 162
    sparse-switch p0, :sswitch_data_1a

    .line 182
    const-string v0, "<UNKNOWN ERROR>"

    .local v0, "problemString":Ljava/lang/String;
    goto :goto_18

    .line 179
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_6
    const-string v0, "CAMERA_DEPRECATED_HAL"

    .line 180
    .restart local v0    # "problemString":Ljava/lang/String;
    goto :goto_18

    .line 167
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_9
    const-string v0, "MAX_CAMERAS_IN_USE"

    .line 168
    .restart local v0    # "problemString":Ljava/lang/String;
    goto :goto_18

    .line 164
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_c
    const-string v0, "CAMERA_IN_USE"

    .line 165
    .restart local v0    # "problemString":Ljava/lang/String;
    goto :goto_18

    .line 176
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_f
    const-string v0, "CAMERA_ERROR"

    .line 177
    .restart local v0    # "problemString":Ljava/lang/String;
    goto :goto_18

    .line 170
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_12
    const-string v0, "CAMERA_DISCONNECTED"

    .line 171
    .restart local v0    # "problemString":Ljava/lang/String;
    goto :goto_18

    .line 173
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_15
    const-string v0, "CAMERA_DISABLED"

    .line 174
    .restart local v0    # "problemString":Ljava/lang/String;
    nop

    .line 184
    :goto_18
    return-object v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_12
        0x3 -> :sswitch_f
        0x4 -> :sswitch_c
        0x5 -> :sswitch_9
        0x3e8 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final whitelist getReason()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return v0
.end method
