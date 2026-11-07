.class public Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorPrivacyChangedParams"
.end annotation


# instance fields
.field private blacklist mEnabled:Z

.field private blacklist mSensor:I

.field private blacklist mState:I

.field private blacklist mToggleType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnabled(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSensor(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)I
    .registers 1

    iget p0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mSensor:I

    return p0
.end method

.method private constructor blacklist <init>(III)V
    .registers 5
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "state"    # I

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput p1, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mToggleType:I

    .line 287
    iput p2, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mSensor:I

    .line 288
    iput p3, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mState:I

    .line 289
    const/4 v0, 0x1

    if-ne p3, v0, :cond_f

    .line 290
    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mEnabled:Z

    goto :goto_12

    .line 292
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mEnabled:Z

    .line 294
    :goto_12
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/hardware/SensorPrivacyManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(III)V

    return-void
.end method

.method private constructor blacklist <init>(IIZ)V
    .registers 4
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput p1, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mToggleType:I

    .line 298
    iput p2, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mSensor:I

    .line 299
    iput-boolean p3, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mEnabled:Z

    .line 300
    return-void
.end method

.method synthetic constructor blacklist <init>(IIZLandroid/hardware/SensorPrivacyManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public whitelist getSensor()I
    .registers 2

    .line 307
    iget v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mSensor:I

    return v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 316
    iget v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mState:I

    return v0
.end method

.method public whitelist getToggleType()I
    .registers 2

    .line 303
    iget v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mToggleType:I

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 311
    iget-boolean v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mEnabled:Z

    return v0
.end method
