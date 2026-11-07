.class public Landroid/hardware/face/FaceSensorProperties;
.super Landroid/hardware/biometrics/SensorProperties;
.source "FaceSensorProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceSensorProperties$SensorType;
    }
.end annotation


# static fields
.field public static final blacklist TYPE_IR:I = 0x2

.field public static final blacklist TYPE_RGB:I = 0x1

.field public static final blacklist TYPE_UNKNOWN:I


# instance fields
.field final blacklist mSensorType:I


# direct methods
.method public constructor blacklist <init>(IILjava/util/List;I)V
    .registers 5
    .param p1, "sensorId"    # I
    .param p2, "sensorStrength"    # I
    .param p4, "sensorType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties$ComponentInfo;",
            ">;I)V"
        }
    .end annotation

    .line 80
    .local p3, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorProperties$ComponentInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/biometrics/SensorProperties;-><init>(IILjava/util/List;)V

    .line 81
    iput p4, p0, Landroid/hardware/face/FaceSensorProperties;->mSensorType:I

    .line 82
    return-void
.end method

.method public static blacklist from(Landroid/hardware/face/FaceSensorPropertiesInternal;)Landroid/hardware/face/FaceSensorProperties;
    .registers 6
    .param p0, "internalProp"    # Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorProperties$ComponentInfo;>;"
    iget-object v1, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->componentInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/ComponentInfoInternal;

    .line 67
    .local v2, "internalComp":Landroid/hardware/biometrics/ComponentInfoInternal;
    invoke-static {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->from(Landroid/hardware/biometrics/ComponentInfoInternal;)Landroid/hardware/biometrics/SensorProperties$ComponentInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v2    # "internalComp":Landroid/hardware/biometrics/ComponentInfoInternal;
    goto :goto_b

    .line 69
    :cond_1f
    new-instance v1, Landroid/hardware/face/FaceSensorProperties;

    iget v2, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget v3, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    iget v4, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorType:I

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/hardware/face/FaceSensorProperties;-><init>(IILjava/util/List;I)V

    return-object v1
.end method


# virtual methods
.method public blacklist getSensorType()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/hardware/face/FaceSensorProperties;->mSensorType:I

    return v0
.end method
