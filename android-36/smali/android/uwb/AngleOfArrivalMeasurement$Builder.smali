.class public final Landroid/uwb/AngleOfArrivalMeasurement$Builder;
.super Ljava/lang/Object;
.source "AngleOfArrivalMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/AngleOfArrivalMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAltitudeAngleMeasurement:Landroid/uwb/AngleMeasurement;

.field private final blacklist mAzimuthAngleMeasurement:Landroid/uwb/AngleMeasurement;


# direct methods
.method public constructor whitelist <init>(Landroid/uwb/AngleMeasurement;)V
    .registers 3
    .param p1, "azimuthAngle"    # Landroid/uwb/AngleMeasurement;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/uwb/AngleOfArrivalMeasurement$Builder;->mAltitudeAngleMeasurement:Landroid/uwb/AngleMeasurement;

    .line 155
    iput-object p1, p0, Landroid/uwb/AngleOfArrivalMeasurement$Builder;->mAzimuthAngleMeasurement:Landroid/uwb/AngleMeasurement;

    .line 156
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/uwb/AngleOfArrivalMeasurement;
    .registers 5

    .line 174
    new-instance v0, Landroid/uwb/AngleOfArrivalMeasurement;

    iget-object v1, p0, Landroid/uwb/AngleOfArrivalMeasurement$Builder;->mAzimuthAngleMeasurement:Landroid/uwb/AngleMeasurement;

    iget-object v2, p0, Landroid/uwb/AngleOfArrivalMeasurement$Builder;->mAltitudeAngleMeasurement:Landroid/uwb/AngleMeasurement;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/uwb/AngleOfArrivalMeasurement;-><init>(Landroid/uwb/AngleMeasurement;Landroid/uwb/AngleMeasurement;Landroid/uwb/AngleOfArrivalMeasurement-IA;)V

    return-object v0
.end method

.method public whitelist setAltitude(Landroid/uwb/AngleMeasurement;)Landroid/uwb/AngleOfArrivalMeasurement$Builder;
    .registers 2
    .param p1, "altitudeAngle"    # Landroid/uwb/AngleMeasurement;

    .line 165
    iput-object p1, p0, Landroid/uwb/AngleOfArrivalMeasurement$Builder;->mAltitudeAngleMeasurement:Landroid/uwb/AngleMeasurement;

    .line 166
    return-object p0
.end method
