.class public Landroid/hardware/camera2/CameraAccessException;
.super Landroid/util/AndroidException;
.source "CameraAccessException.java"


# static fields
.field public static final CAMERA_DEPRECATED_HAL:I = 0x3e8

.field public static final CAMERA_DISABLED:I = 0x1

.field public static final CAMERA_DISCONNECTED:I = 0x2

.field public static final CAMERA_ERROR:I = 0x3

.field public static final CAMERA_IN_USE:I = 0x4

.field public static final MAX_CAMERAS_IN_USE:I = 0x5

.field private static final serialVersionUID:J = 0x4e22fb28f3a4e7dbL


# instance fields
.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "problem"    # I

    #@0
    .prologue
    .line 112
    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@7
    .line 113
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    #@9
    .line 111
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 117
    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@7
    .line 118
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    #@9
    .line 116
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 122
    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    .line 123
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    #@9
    .line 121
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "problem"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 127
    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    .line 128
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    #@9
    .line 126
    return-void
.end method

.method private static getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "problem"    # I
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    invoke-static {p0}, Landroid/hardware/camera2/CameraAccessException;->getProblemString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 157
    .local v0, "problemString":Ljava/lang/String;
    const-string/jumbo v1, "%s (%d): %s"

    #@7
    const/4 v2, 0x3

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v0, v2, v3

    #@d
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v3

    #@11
    const/4 v4, 0x1

    #@12
    aput-object v3, v2, v4

    #@14
    const/4 v3, 0x2

    #@15
    aput-object p1, v2, v3

    #@17
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public static getDefaultMessage(I)Ljava/lang/String;
    .locals 1
    .param p0, "problem"    # I

    #@0
    .prologue
    .line 135
    packed-switch p0, :pswitch_data_0

    #@3
    .line 152
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 137
    :pswitch_0
    const-string/jumbo v0, "The camera device is in use already"

    #@8
    return-object v0

    #@9
    .line 139
    :pswitch_1
    const-string/jumbo v0, "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed."

    #@c
    return-object v0

    #@d
    .line 143
    :pswitch_2
    const-string/jumbo v0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    #@10
    return-object v0

    #@11
    .line 147
    :pswitch_3
    const-string/jumbo v0, "The camera is disabled due to a device policy, and cannot be opened."

    #@14
    return-object v0

    #@15
    .line 149
    :pswitch_4
    const-string/jumbo v0, "The camera device is currently in the error state; no further calls to it will succeed."

    #@18
    return-object v0

    #@19
    .line 135
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getProblemString(I)Ljava/lang/String;
    .locals 1
    .param p0, "problem"    # I

    #@0
    .prologue
    .line 162
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 182
    const-string/jumbo v0, "<UNKNOWN ERROR>"

    #@6
    .line 184
    .local v0, "problemString":Ljava/lang/String;
    :goto_0
    return-object v0

    #@7
    .line 164
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "CAMERA_IN_USE"

    #@a
    .restart local v0    # "problemString":Ljava/lang/String;
    goto :goto_0

    #@b
    .line 167
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "MAX_CAMERAS_IN_USE"

    #@e
    .restart local v0    # "problemString":Ljava/lang/String;
    goto :goto_0

    #@f
    .line 170
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "CAMERA_DISCONNECTED"

    #@12
    .restart local v0    # "problemString":Ljava/lang/String;
    goto :goto_0

    #@13
    .line 173
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v0, "CAMERA_DISABLED"

    #@16
    .restart local v0    # "problemString":Ljava/lang/String;
    goto :goto_0

    #@17
    .line 176
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "CAMERA_ERROR"

    #@1a
    .restart local v0    # "problemString":Ljava/lang/String;
    goto :goto_0

    #@1b
    .line 179
    .end local v0    # "problemString":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "CAMERA_DEPRECATED_HAL"

    #@1e
    .restart local v0    # "problemString":Ljava/lang/String;
    goto :goto_0

    #@1f
    .line 162
    nop

    #@20
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x3e8 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getReason()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    #@2
    return v0
.end method
