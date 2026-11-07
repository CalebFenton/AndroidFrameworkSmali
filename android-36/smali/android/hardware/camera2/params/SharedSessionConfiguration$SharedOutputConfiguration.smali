.class public final Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;
.super Ljava/lang/Object;
.source "SharedSessionConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/SharedSessionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedOutputConfiguration"
.end annotation


# instance fields
.field private final blacklist mDataspace:I

.field private final blacklist mFormat:I

.field private blacklist mMirrorMode:I

.field private blacklist mPhysicalCameraId:Ljava/lang/String;

.field private blacklist mReadoutTimestampEnabled:Z

.field private final blacklist mSize:Landroid/util/Size;

.field private final blacklist mStreamUseCase:J

.field private final blacklist mSurfaceType:I

.field private blacklist mTimestampBase:I

.field private final blacklist mUsage:J


# direct methods
.method public constructor blacklist <init>(ILandroid/util/Size;IIZIIJJLjava/lang/String;)V
    .registers 13
    .param p1, "surfaceType"    # I
    .param p2, "sz"    # Landroid/util/Size;
    .param p3, "format"    # I
    .param p4, "mirrorMode"    # I
    .param p5, "readoutTimeStampEnabled"    # Z
    .param p6, "timestampBase"    # I
    .param p7, "dataspace"    # I
    .param p8, "usage"    # J
    .param p10, "streamUseCase"    # J
    .param p12, "physicalCamId"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mSurfaceType:I

    .line 120
    iput-object p2, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mSize:Landroid/util/Size;

    .line 121
    iput p3, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mFormat:I

    .line 122
    iput p4, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mMirrorMode:I

    .line 123
    iput-boolean p5, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 124
    iput p6, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mTimestampBase:I

    .line 125
    iput p7, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mDataspace:I

    .line 126
    iput-wide p8, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mUsage:J

    .line 127
    iput-wide p10, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mStreamUseCase:J

    .line 128
    iput-object p12, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist getDataspace()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mDataspace:I

    return v0
.end method

.method public whitelist getFormat()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mFormat:I

    return v0
.end method

.method public whitelist getMirrorMode()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mMirrorMode:I

    return v0
.end method

.method public whitelist getPhysicalCameraId()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    iget-object v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    :goto_c
    return-object v0
.end method

.method public whitelist getSize()Landroid/util/Size;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist getStreamUseCase()J
    .registers 3

    .line 187
    iget-wide v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mStreamUseCase:J

    return-wide v0
.end method

.method public whitelist getSurfaceType()I
    .registers 2

    .line 141
    iget v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mSurfaceType:I

    return v0
.end method

.method public whitelist getTimestampBase()I
    .registers 2

    .line 196
    iget v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mTimestampBase:I

    return v0
.end method

.method public whitelist getUsage()J
    .registers 3

    .line 212
    iget-wide v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mUsage:J

    return-wide v0
.end method

.method public whitelist isReadoutTimestampEnabled()Z
    .registers 2

    .line 203
    iget-boolean v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->mReadoutTimestampEnabled:Z

    return v0
.end method
