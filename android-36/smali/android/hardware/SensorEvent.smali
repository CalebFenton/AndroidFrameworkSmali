.class public Landroid/hardware/SensorEvent;
.super Ljava/lang/Object;
.source "SensorEvent.java"


# instance fields
.field public whitelist accuracy:I

.field public whitelist firstEventAfterDiscontinuity:Z

.field public whitelist sensor:Landroid/hardware/Sensor;

.field public whitelist timestamp:J

.field public final whitelist values:[F


# direct methods
.method constructor greylist <init>(I)V
    .registers 3
    .param p1, "valueSize"    # I

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    new-array v0, p1, [F

    iput-object v0, p0, Landroid/hardware/SensorEvent;->values:[F

    .line 858
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/Sensor;IJ[F)V
    .registers 6
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I
    .param p3, "timestamp"    # J
    .param p5, "values"    # [F

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    iput-object p1, p0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 867
    iput p2, p0, Landroid/hardware/SensorEvent;->accuracy:I

    .line 868
    iput-wide p3, p0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 869
    iput-object p5, p0, Landroid/hardware/SensorEvent;->values:[F

    .line 870
    return-void
.end method
