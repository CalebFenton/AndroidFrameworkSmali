.class public Landroid/hardware/SensorAdditionalInfo;
.super Ljava/lang/Object;
.source "SensorAdditionalInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorAdditionalInfo$AdditionalInfoType;
    }
.end annotation


# static fields
.field public static final greylist-max-o TYPE_CUSTOM_INFO:I = 0x10000000

.field public static final greylist-max-o TYPE_DEBUG_INFO:I = 0x40000000

.field public static final greylist-max-o TYPE_DOCK_STATE:I = 0x30002

.field public static final whitelist TYPE_FRAME_BEGIN:I = 0x0

.field public static final whitelist TYPE_FRAME_END:I = 0x1

.field public static final greylist-max-o TYPE_HIGH_PERFORMANCE_MODE:I = 0x30003

.field public static final whitelist TYPE_INTERNAL_TEMPERATURE:I = 0x10001

.field public static final greylist-max-o TYPE_LOCAL_GEOMAGNETIC_FIELD:I = 0x30000

.field public static final greylist-max-o TYPE_LOCAL_GRAVITY:I = 0x30001

.field public static final greylist-max-o TYPE_MAGNETIC_FIELD_CALIBRATION:I = 0x30004

.field public static final whitelist TYPE_SAMPLING:I = 0x10004

.field public static final whitelist TYPE_SENSOR_PLACEMENT:I = 0x10003

.field public static final whitelist TYPE_UNTRACKED_DELAY:I = 0x10000

.field public static final whitelist TYPE_VEC3_CALIBRATION:I = 0x10002


# instance fields
.field public final whitelist floatValues:[F

.field public final whitelist intValues:[I

.field public final whitelist sensor:Landroid/hardware/Sensor;

.field public final whitelist serial:I

.field public final whitelist type:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/Sensor;II[I[F)V
    .registers 6
    .param p1, "aSensor"    # Landroid/hardware/Sensor;
    .param p2, "aType"    # I
    .param p3, "aSerial"    # I
    .param p4, "aIntValues"    # [I
    .param p5, "aFloatValues"    # [F

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    .line 250
    iput p2, p0, Landroid/hardware/SensorAdditionalInfo;->type:I

    .line 251
    iput p3, p0, Landroid/hardware/SensorAdditionalInfo;->serial:I

    .line 252
    iput-object p4, p0, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    .line 253
    iput-object p5, p0, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    .line 254
    return-void
.end method

.method public static greylist-max-o createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;
    .registers 10
    .param p0, "aSensor"    # Landroid/hardware/Sensor;
    .param p1, "type"    # I
    .param p2, "data"    # [F

    .line 271
    const/high16 v0, 0x10000000

    if-lt p1, v0, :cond_15

    const/high16 v0, 0x40000000    # 2.0f

    if-ge p1, v0, :cond_15

    if-eqz p0, :cond_15

    .line 276
    new-instance v1, Landroid/hardware/SensorAdditionalInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    .end local p0    # "aSensor":Landroid/hardware/Sensor;
    .end local p1    # "type":I
    .end local p2    # "data":[F
    .local v2, "aSensor":Landroid/hardware/Sensor;
    .local v3, "type":I
    .local v6, "data":[F
    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    return-object v1

    .line 271
    .end local v2    # "aSensor":Landroid/hardware/Sensor;
    .end local v3    # "type":I
    .end local v6    # "data":[F
    .restart local p0    # "aSensor":Landroid/hardware/Sensor;
    .restart local p1    # "type":I
    .restart local p2    # "data":[F
    :cond_15
    move-object v2, p0

    move v3, p1

    move-object v6, p2

    .line 272
    .end local p0    # "aSensor":Landroid/hardware/Sensor;
    .end local p1    # "type":I
    .end local p2    # "data":[F
    .restart local v2    # "aSensor":Landroid/hardware/Sensor;
    .restart local v3    # "type":I
    .restart local v6    # "data":[F
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "invalid parameter(s): type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; sensor: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o createLocalGeomagneticField(FFF)Landroid/hardware/SensorAdditionalInfo;
    .registers 10
    .param p0, "strength"    # F
    .param p1, "declination"    # F
    .param p2, "inclination"    # F

    .line 259
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_41

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_41

    float-to-double v0, p1

    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_41

    float-to-double v0, p1

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_41

    float-to-double v0, p2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_41

    float-to-double v0, p2

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_41

    .line 265
    new-instance v1, Landroid/hardware/SensorAdditionalInfo;

    const/4 v0, 0x3

    new-array v6, v0, [F

    const/4 v0, 0x0

    aput p0, v6, v0

    const/4 v0, 0x1

    aput p1, v6, v0

    const/4 v0, 0x2

    aput p2, v6, v0

    const/4 v2, 0x0

    const/high16 v3, 0x30000

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    return-object v1

    .line 262
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geomagnetic field info out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
