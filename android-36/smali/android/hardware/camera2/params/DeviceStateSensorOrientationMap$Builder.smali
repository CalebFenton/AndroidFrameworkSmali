.class public final Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$Builder;
.super Ljava/lang/Object;
.source "DeviceStateSensorOrientationMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDeviceStateOrientationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$Builder;->mElements:Ljava/util/ArrayList;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$Builder;->mDeviceStateOrientationMap:Ljava/util/HashMap;

    .line 192
    return-void
.end method


# virtual methods
.method public whitelist addOrientationForState(JJ)Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$Builder;
    .registers 9
    .param p1, "deviceState"    # J
    .param p3, "angle"    # J

    .line 208
    const-wide/16 v0, 0x5a

    rem-long v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    .line 212
    iget-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$Builder;->mDeviceStateOrientationMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$Builder;->mElements:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$Builder;->mElements:Ljava/util/ArrayList;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    return-object p0

    .line 209
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor orientation not divisible by 90: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
    .registers 5

    .line 225
    iget-object v0, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$Builder;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_13

    .line 229
    new-instance v0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    iget-object v1, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$Builder;->mElements:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap$Builder;->mDeviceStateOrientationMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap-IA;)V

    return-object v0

    .line 226
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot build a DeviceStateSensorOrientationMap with zero elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
