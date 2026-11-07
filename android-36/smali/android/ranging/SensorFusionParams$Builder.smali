.class public final Landroid/ranging/SensorFusionParams$Builder;
.super Ljava/lang/Object;
.source "SensorFusionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/SensorFusionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mSensorFusionEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSensorFusionEnabled(Landroid/ranging/SensorFusionParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/ranging/SensorFusionParams$Builder;->mSensorFusionEnabled:Z

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/ranging/SensorFusionParams$Builder;->mSensorFusionEnabled:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/SensorFusionParams;
    .registers 3

    .line 91
    new-instance v0, Landroid/ranging/SensorFusionParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/SensorFusionParams;-><init>(Landroid/ranging/SensorFusionParams$Builder;Landroid/ranging/SensorFusionParams-IA;)V

    return-object v0
.end method

.method public whitelist setSensorFusionEnabled(Z)Landroid/ranging/SensorFusionParams$Builder;
    .registers 2
    .param p1, "sensorFusionEnabled"    # Z

    .line 103
    iput-boolean p1, p0, Landroid/ranging/SensorFusionParams$Builder;->mSensorFusionEnabled:Z

    .line 104
    return-object p0
.end method
