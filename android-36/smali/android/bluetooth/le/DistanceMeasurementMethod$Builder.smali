.class public final Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;
.super Ljava/lang/Object;
.source "DistanceMeasurementMethod.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/DistanceMeasurementMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mId:I

.field private blacklist mIsAltitudeAngleSupported:Z

.field private blacklist mIsAzimuthAngleSupported:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 5
    .param p1, "id"    # I

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;->mIsAzimuthAngleSupported:Z

    .line 212
    iput-boolean v0, p0, Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;->mIsAltitudeAngleSupported:Z

    .line 220
    packed-switch p1, :pswitch_data_28

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown method id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_24
    iput p1, p0, Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;->mId:I

    .line 225
    nop

    .line 229
    return-void

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/DistanceMeasurementMethod;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 265
    new-instance v0, Landroid/bluetooth/le/DistanceMeasurementMethod;

    iget v1, p0, Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;->mId:I

    iget-boolean v2, p0, Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;->mIsAzimuthAngleSupported:Z

    iget-boolean v3, p0, Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;->mIsAltitudeAngleSupported:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/DistanceMeasurementMethod;-><init>(IZZLandroid/bluetooth/le/DistanceMeasurementMethod-IA;)V

    return-object v0
.end method

.method public whitelist setAltitudeAngleSupported(Z)Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;
    .registers 2
    .param p1, "supported"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 253
    iput-boolean p1, p0, Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;->mIsAltitudeAngleSupported:Z

    .line 254
    return-object p0
.end method

.method public whitelist setAzimuthAngleSupported(Z)Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;
    .registers 2
    .param p1, "supported"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 240
    iput-boolean p1, p0, Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;->mIsAzimuthAngleSupported:Z

    .line 241
    return-object p0
.end method
