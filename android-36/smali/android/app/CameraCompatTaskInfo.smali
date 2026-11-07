.class public Landroid/app/CameraCompatTaskInfo;
.super Ljava/lang/Object;
.source "CameraCompatTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/CameraCompatTaskInfo$FreeformCameraCompatMode;
    }
.end annotation


# static fields
.field public static final blacklist CAMERA_COMPAT_FREEFORM_LANDSCAPE_DEVICE_IN_LANDSCAPE:I = 0x3

.field public static final blacklist CAMERA_COMPAT_FREEFORM_LANDSCAPE_DEVICE_IN_PORTRAIT:I = 0x5

.field public static final blacklist CAMERA_COMPAT_FREEFORM_NONE:I = 0x1

.field public static final blacklist CAMERA_COMPAT_FREEFORM_PORTRAIT_DEVICE_IN_LANDSCAPE:I = 0x2

.field public static final blacklist CAMERA_COMPAT_FREEFORM_PORTRAIT_DEVICE_IN_PORTRAIT:I = 0x4

.field public static final blacklist CAMERA_COMPAT_FREEFORM_UNSPECIFIED:I

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/CameraCompatTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist freeformCameraCompatMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Landroid/app/CameraCompatTaskInfo$1;

    invoke-direct {v0}, Landroid/app/CameraCompatTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/CameraCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/CameraCompatTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 104
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/CameraCompatTaskInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/CameraCompatTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static blacklist create()Landroid/app/CameraCompatTaskInfo;
    .registers 1

    .line 99
    new-instance v0, Landroid/app/CameraCompatTaskInfo;

    invoke-direct {v0}, Landroid/app/CameraCompatTaskInfo;-><init>()V

    return-object v0
.end method

.method public static blacklist freeformCameraCompatModeToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "freeformCameraCompatMode"    # I

    .line 192
    packed-switch p0, :pswitch_data_30

    .line 203
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected camera compat mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 202
    :pswitch_1c
    const-string v0, "app-landscape-device-portrait"

    goto :goto_2f

    .line 200
    :pswitch_1f
    const-string v0, "app-portrait-device-portrait"

    goto :goto_2f

    .line 198
    :pswitch_22
    const-string v0, "app-landscape-device-landscape"

    goto :goto_2f

    .line 196
    :pswitch_25
    const-string v0, "app-portrait-device-landscape"

    goto :goto_2f

    .line 194
    :pswitch_28
    const-string/jumbo v0, "inactive"

    goto :goto_2f

    .line 193
    :pswitch_2c
    const-string/jumbo v0, "undefined"

    .line 192
    :goto_2f
    return-object v0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist getDisplayRotationFromCameraCompatMode(I)I
    .registers 2
    .param p0, "cameraCompatMode"    # I

    .line 179
    packed-switch p0, :pswitch_data_a

    .line 184
    const/4 v0, -0x1

    goto :goto_8

    .line 183
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_8

    .line 181
    :pswitch_7
    const/4 v0, 0x0

    .line 179
    :goto_8
    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equalsForCompatUi(Landroid/app/CameraCompatTaskInfo;)Z
    .registers 5
    .param p1, "that"    # Landroid/app/CameraCompatTaskInfo;

    .line 154
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 155
    return v0

    .line 157
    :cond_4
    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    iget v2, p1, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    if-ne v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public blacklist equalsForTaskOrganizer(Landroid/app/CameraCompatTaskInfo;)Z
    .registers 5
    .param p1, "that"    # Landroid/app/CameraCompatTaskInfo;

    .line 144
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 145
    return v0

    .line 147
    :cond_4
    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    iget v2, p1, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    if-ne v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    .line 129
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraCompatTaskInfo { freeformCameraCompatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    .line 163
    invoke-static {v1}, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 136
    iget v0, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void
.end method
